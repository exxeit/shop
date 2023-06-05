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
                        <h1 className="display-4 font-weight-normal text-info">Изделия из кожи</h1>
                        <p className="lead font-weight-normal">Изделия из кожи - Наши дизайнеры регулярно посещают знаменитые выставки в городе Милан (Италия),
                            где перенимают международный опыт и черпают вдохновение для своих будущих коллекций. Стильные, созданные по традиционной технологии,
                            аксессуары из натуральной кожи обладают особым шармом.!</p>

                        <p className="lead font-weight-normal text-info"> © Изделия из кожи - «Уникально. Индивидуально. Безупречно.»</p>

                        <Button variant={"outline-info"} onClick={() => history.push(DEVICE_ROUTE)}>К нашим изделиям!</Button>
                    </div>
                    <div className="product-device box-shadow d-none d-md-block"/>
                    <div className="product-device product-device-2 box-shadow d-none d-md-block"/>
                </div>

                <div className="d-md-flex flex-md-equal w-150 my-md-3 pl-md-3">
                    <div className="bg-light mr-md-3 pt-3 px-3 pt-md-2 px-md-3 text-center overflow-hidden">
                        <div className="my-3 p-3">
                            <h2 className="display-5">Коллекция "Royal"</h2>
                            <p className="lead">«Грация.»</p>
                        </div>
                        <Col md={4}>
                            <Image style={{width: 450, height:250}} src="https://makey-shop.by/assets/images/products/668/115-08-51.jpg"/>
                            <br/>
                            <br/>
                        </Col>

                        <Button variant={"outline-info"} href="https://www.microsoft.com/ru-by">Подробнее</Button>

                    </div>
                    <div className="bg-light mr-md-3 pt-3 px-3 pt-md-2 px-md-3 text-center overflow-hidden">
                        <div className="my-3 py-3">
                            <h2 className="display-5">Коллекция "Геометрия"</h2>
                            <p className="lead">«Минимализм.»</p>

                        </div>
                        <Col md={4}>
                            <Image style={{width: 450, height:250}} src="https://scontent-frt3-2.xx.fbcdn.net/v/t31.18172-8/26221186_1701938546535866_504527107699320395_o.jpg?_nc_cat=100&ccb=1-7&_nc_sid=9267fe&_nc_ohc=vJhg86qBKKwAX-SxXIo&_nc_ht=scontent-frt3-2.xx&oh=00_AfBB5GBIF5Sr1aId_-Oc9p7PDrZM3wNrT0Lb-bdnnMeHgg&oe=6473C6B7"/>
                            <br/>
                            <br/>
                        </Col>

                        <Button variant={"outline-info"} href="https://about.google/">Подробнее</Button>
                    </div>
                </div>

                <div className="d-md-flex flex-md-equal w-150 my-md-3 pl-md-3">
                    <div className="bg-light mr-md-3 pt-3 px-3 pt-md-2 px-md-3 text-center overflow-hidden">
                        <div className="my-3 p-3">
                            <h2 className="display-5">Коллекция "Венеция"</h2>
                            <p className="lead">«Изящество.»</p>
                        </div>
                        <Col md={4}>
                            <Image style={{width: 450, height:250}} src="https://static.insales-cdn.com/images/products/1/2931/155741043/large_p_ibjk_65Vc.jpg"/>
                            <br/>
                            <br/>
                        </Col>

                        <Button variant={"outline-info"} href="https://www.ableton.com/">Подробнее</Button>

                    </div>
                    <div className="bg-light mr-md-3 pt-3 px-3 pt-md-2 px-md-3 text-center overflow-hidden">
                        <div className="my-3 py-3">
                            <h2 className="display-5">Коллекция "Ар-Нуво"</h2>
                            <p className="lead">Элегенатность.»</p>

                        </div>
                        <Col md={4}>
                            <Image style={{width: 450, height:250}} src="http://metasalon.by/wp-content/uploads/2019/04/%D0%BC%D0%B0%D0%BA%D0%B5%D0%B9.jpg"/>
                            <br/>
                            <br/>
                        </Col>

                        <Button variant={"outline-info"} href="https://www.alludo.com/en/">Подробнее</Button>
                    </div>
                </div>





            </Container>
        );
    };


    export default AboutUsPage;