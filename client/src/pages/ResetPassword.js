import {observer} from "mobx-react-lite";
import Card from "react-bootstrap/Card";
import {Container, Form} from "react-bootstrap";
import Row from "react-bootstrap/Row";
import Button from "react-bootstrap/Button";
import React, {useState} from "react";
import {changePass} from "../http/userAPI";

const ResetPassword = observer(() => {
    const searchParams = new URLSearchParams(document.location.search)
    const [password, setPassword] = useState('')
    const [isGood, setIsGood] = useState(true)
    const [success, setSuccess] = useState(false)
    const [error, setError] = useState(false)


    const click = async () => {
        if(password.length < 8) {
            setIsGood(false)
            return null
        } else {
            setIsGood(true)
            try {
                await changePass(searchParams.get('token'), password)
                setIsGood(true)
                setError(false)
                setSuccess(true)
            }catch {
                setIsGood(true)
                setSuccess(false)
                setError(true)
            }
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
                    (!error && !success) &&
                    <Form className="d-flex flex-column">
                    <Form.Control
                        className="mt-3"
                        placeholder="Введите новый пароль"
                        value={password}
                        onChange={e => setPassword(e.target.value)}
                    />
                    <Row className="d-flex justify-content-between mt-3 pl-3 pr-3">
                        {
                            !isGood && <div className="pass_error">Пароль должен быть длиннее 8 символов.</div>
                        }
                    </Row>
                    <Row className="d-flex justify-content-between mt-3 pl-3 pr-3">
                        <Button
                            variant={"outline-success"}
                            onClick={click}
                        >
                            Сохранить
                        </Button>
                    </Row>

                </Form>
                }
                {
                    error && <div className="pass_error">Ошибка при смене пароля.</div>
                }
                {
                    success && <div className="pass_success">Пароль успешно изменен.</div>
                }
            </Card>
        </Container>
    )
})

export default ResetPassword;