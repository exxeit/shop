import React, {useContext, useState} from 'react';
import {Button, Card, Col, Container, Image} from "react-bootstrap";
import {DEVICE_ROUTE, LOGIN_ROUTE} from "../utils/consts";
import {useHistory} from "react-router-dom";
import {Context} from "../index";
import {observer} from "mobx-react-lite";
import {DefaultAllowlist as device} from "bootstrap/js/src/util/sanitizer";



    const AboutUsPage = () => {

            const {user} = useContext(Context)
            const history = useHistory()
            const logOut = () => {
                user.setUser({})
                user.setIsAuth(false)
                localStorage.removeItem('token')
            }

        return (
            <Container>
                <div className="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center">
                    <div className="col-md-18 p-lg-2 mx-auto my-3">
                        <h1 className="display-4 font-weight-normal text-info">Изделия из кожи Comrade</h1>
                        <p className="lead font-weight-normal">
                            Здравствуйте, я Роман, помешан на коже, вручную шью аксессуары и сумки.
                            Развиваю свою мастерскую с 19 лет. Создаю вещи без срока годности, даю на них пожизненную гарантию.
                            Стильные и оригинальные, созданные по традиционной технологии,
                            изделия из кожи Comrade обладают особым шармом и внешним видом!</p>

                        <p className="lead font-weight-normal text-info"> © Изделия из кожи Comrade - «Уникально. Индивидуально. Оригинально.»</p>

                        <Button variant={"outline-info"} onClick={() => history.push(DEVICE_ROUTE)}>К изделиям!</Button>
                    </div>
                    <div className="product-device box-shadow d-none d-md-block"/>
                    <div className="product-device product-device-2 box-shadow d-none d-md-block"/>
                </div>

                <div className="d-md-flex flex-md-equal w-100 my-md-3 pl-md-3">
                    <div className="bg-light mr-md-3 pt-3 px-3 pt-md-2 px-md-3 text-center overflow-hidden">
                        <div className="my-3 p-1">

                        </div>
                        <Col md={4}>
                            <Image style={{width: 450, height:450, objectFit:"cover"}} src="leather.jpg"/>
                            <br/>
                            <br/>
                        </Col>



                    </div>
                    <div className="bg-light mr-md-3 pt-3 px-3 pt-md-2 px-md-3 text-center overflow-hidden">
                        <div className="my-3 p-1">


                        </div>
                        <Col md={4}>
                            <Image style={{width: 450, height:450, objectFit:"cover"}} src="leath.jpg"/>
                            <br/>
                            <br/>
                        </Col>


                    </div>
                </div>

                <div className="d-md-flex flex-md-equal w-150 my-md-3 pl-md-3">
                    <div className="bg-light mr-md-3 pt-3 px-3 pt-md-2 px-md-3 text-center overflow-hidden">
                        <div className="my-3 p-1">

                        </div>
                        <Col md={4}>
                            <Image style={{width: 450, height:450, objectFit:"cover"}} src="rom.jpg"/>
                            <br/>
                            <br/>
                        </Col>



                    </div>
                    <div className="bg-light mr-md-3 pt-3 px-3 pt-md-2 px-md-3 text-center overflow-hidden">
                        <div className="my-3 p-1">


                        </div>
                        <Col md={4}>
                            <Image style={{width: 450, height:450, objectFit:"cover"}} src="caiman.jpg"/>
                            <br/>
                            <br/>
                        </Col>


                    </div>
                </div>





            </Container>
        );
    };


    export default AboutUsPage;