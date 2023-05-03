import React, {useEffect, useState} from 'react';
import {Button, Container, Form, Row} from "react-bootstrap";
import {useHistory, useParams} from 'react-router-dom'
import {fetchOneDevice} from "../http/deviceAPI";
import { makeOrder } from "../http/orderApi";
import {SHOP_ROUTE} from "../utils/consts";

const MakeOrderPage = () => {
    const [device, setDevice] = useState({info: []})
    const {id} = useParams()
    const history = useHistory()
    useEffect(() => {
        fetchOneDevice(id).then(data => setDevice(data))
    }, [])
    const [email, setEmail] = useState('');
    const click = async () => {
        try {
            await makeOrder(email, id);
            history.push(SHOP_ROUTE);
        } catch (e) {
            console.log(e)
        }
    }
    return (
        <Container>
            <div className="card text-center">
                <div className="card-header">
                    <h1 color="lightgreen">Оформление заказа</h1>
                </div>
                <div className="card-body">
                    <Row className="d-flex flex-column m-3">
                        <h3>Укажите контактные данные</h3>
                        <Form className="card-title">
                            <Form.Control
                                className="mt-3"
                                placeholder="Уважаемый пользователь, укажите свою действительную эл. почту.
                                 Вам вышлют ключ продукта для его активации после вашей оплаты."
                                value={email}
                                onChange={e => setEmail(e.target.value)}
                            />
                        </Form>
                    </Row>
                    <p className="card-text"><div>Ваш заказ: {device.name}, стоимостью {device.price} белорусских рублей</div></p>

                        <Button
                            variant={"outline-info"}
                            onClick={click}
                        >
                            Отправить
                        </Button>

                </div>
                <div className="card-footer text-success">
                    © 2021 SuperSoft Co.
                </div>
            </div>


        </Container>
    );
};

export default MakeOrderPage;
