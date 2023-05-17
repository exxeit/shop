import {observer} from "mobx-react-lite";
import Card from "react-bootstrap/Card";
import {Container, Form} from "react-bootstrap";
import Row from "react-bootstrap/Row";
import {NavLink} from "react-router-dom";
import {LOGIN_ROUTE} from "../utils/consts";
import Button from "react-bootstrap/Button";
import React, {useState} from "react";
import {sendResetEmail} from "../http/userAPI";

const Reset = observer(() => {
    const [email, setEmail] = useState('')
    const [sended, setSended] = useState(false)
    const [noEmail, setNoEmail] = useState(false)
    const [wrongEmail, setWrongEmail] = useState(false)

    const validateEmail = (email) => {
        return String(email)
            .toLowerCase()
            .match(
                /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
            );
    };

    const click = async () => {
        if(validateEmail(email)) {
            try {
                const res = await sendResetEmail(email)
                if(res.sended){
                    setSended(true)
                }
            } catch {
                if(!noEmail) setNoEmail(true)
            }
        } else {
            setNoEmail(false)
            setWrongEmail(true)
        }
    }

    return (
        <Container
            className="d-flex justify-content-center align-items-center"
            style={{height: window.innerHeight - 54}}
        >
            <Card style={{width: 600}} className="p-5">

                <h2 className="m-auto">Восстановление пароля</h2>
                {
                    !sended
                        ? <Form className="d-flex flex-column">
                            <Form.Control
                                className="mt-3"
                                placeholder="Введите вашу эл. почту"
                                value={email}
                                onChange={e => setEmail(e.target.value)}
                            />
                            <Row className="d-flex justify-content-between mt-3 pl-3 pr-3">
                                {
                                    wrongEmail && <div className="pass_error">Введите email.</div>
                                }
                                {
                                    noEmail && <div className="pass_error">Аккаунта с таким email не существует.</div>
                                }
                            </Row>
                            <Row className="d-flex justify-content-between mt-3 pl-3 pr-3">
                                <div>
                                    Вспомнили пароль? <NavLink to={LOGIN_ROUTE}>Войдите!</NavLink>
                                </div>
                                <Button
                                    variant={"outline-success"}
                                    onClick={click}
                                >
                                    Отправить письмо
                                </Button>
                            </Row>
                        </Form>
                        : <div className="info_email_sended">Письмо отправлено. Проверьте почту и измените пароль в течении 5 минут!</div>
                }
            </Card>
        </Container>
    )
})

export default Reset;