import React, {useContext, useEffect, useState} from 'react';
import {Button, Card, Col, Container, Image, Row} from "react-bootstrap";

import {useHistory, useParams} from 'react-router-dom'
import {addToFav, delToFav, fetchOneDevice, isFav} from "../http/deviceAPI";
import {ORDER_MAKE, SHOP_ROUTE} from "../utils/consts";
import {Context} from "../index";
import {deleteDevice} from "../http/deviceAPI";

import star from '../assets/star.png';
import goldStar from '../assets/goldStar.png';

const DevicePage = () => {
    const [isFavorite, setIsFavorite] = useState(false);

    const history = useHistory()
    const {user} = useContext(Context)
    const [device, setDevice] = useState({info: []})
    const {id} = useParams()
    const toggleFavorite = async () => {
        if (isFavorite) {
            await delToFav(id, user.id);
        } else {
            await addToFav(id, user.id);
        }

        setIsFavorite(!isFavorite);
    };
    useEffect(async () => {
        fetchOneDevice(id).then(data => setDevice(data))
        let res = await isFav(id, user.id)
        setIsFavorite(res)

    }, [])

    const click = async () => {
        try {
            await deleteDevice(id);
            history.push(SHOP_ROUTE);
        } catch (e) {
            console.log(e)
        }
    }
    return (
        <Container className="mt-3">
            <Row>
                <Col md={7}>
                    <Image style={{maxHeight:300}} src={process.env.REACT_APP_API_URL + device.img}/>
                </Col>
                <Col md={4}>
                    <Card
                        className="d-flex flex-column align-items-center justify-content-around"
                        style={{width: 450, height: 300, fontSize: 34}}
                    >
                        <h5>{device.name}</h5>
                        <h3 color="skyblue">Цена: {device.price} руб.</h3>

                        <Button className='btn btn-outline-success text-lg-end' onClick={() => history.push(ORDER_MAKE + '/' + device.id)} variant={"outline-success"}>Оформить предзаказ</Button>
                        <div onClick={toggleFavorite}>
                            <img style={{maxHeight: 15}} src={isFavorite ? goldStar : star} alt="Favorite" />
                        </div>
                    </Card>
                </Col>
            </Row>
            <Row className="d-flex flex-column m-3">
                <h1>Характеристики</h1>
                {device.info.map((info, index) =>
                    <Row key={info.id} style={{background: index % 2 === 0 ? 'seagreen' : 'dark', padding: 8}}>
                        {info.title}: {info.description}
                    </Row>
                )}
            </Row>
            { user.isAdmin ? <button className='btn btn-danger' onClick={() => click()}>Удалить</button> : ""}
        </Container>
    );
};

export default DevicePage;
