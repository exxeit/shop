import React, {useState} from 'react';
import {Button, Container} from "react-bootstrap";
import CreateBrand from "../components/modals/CreateBrand";
import CreateDevice from "../components/modals/CreateDevice";
import CreateType from "../components/modals/CreateType";


const Admin = () => {
    const [brandVisible, setBrandVisible] = useState(false)
    const [typeVisible, setTypeVisible] = useState(false)
    const [deviceVisible, setDeviceVisible] = useState(false)

    return (

        <Container className="d-flex flex-column">
            <div className="card-deck mb-3 text-center mt-5">
            <div className="card mb-4 box-shadow">
                <div className="card-header">
                    <h4 className="my-0 font-weight-normal">Выбор типа</h4>
                </div>
                <div className="card-body">
                    <h1 className="card-title pricing-card-title"> <small className="text-dark">Тип</small></h1>
                    <ul className="list-unstyled mt-3 mb-4">
                        <li>Например: портмоне, ключница и др.</li>

                    </ul>
                    <Button
                        variant={"outline-info"}
                        className="mt-4 p-2"
                        onClick={() => setTypeVisible(true)}
                    >
                        Добавить
                    </Button>
                </div>
            </div>

            <div className="card mb-4 box-shadow">
                <div className="card-header">
                    <h4 className="my-0 font-weight-normal">Выбор цвета</h4>
                </div>
                <div className="card-body">
                    <h1 className="card-title pricing-card-title"> <small className="text-dark">Цвет</small></h1>
                    <ul className="list-unstyled mt-3 mb-4">
                        <li>Например: красный, чёрный и др.)</li>

                    </ul>
                    <Button
                        variant={"outline-success"}
                        className="mt-4 p-2"
                        onClick={() => setBrandVisible(true)}
                    >
                        Добавить
                    </Button>
                </div>
            </div>

            <div className="card mb-4 box-shadow">
                <div className="card-header">
                    <h4 className="my-0 font-weight-normal">Выбор наименования</h4>
                </div>
                <div className="card-body">
                    <h1 className="card-title pricing-card-title"> <small className="text-dark">Наименование</small></h1>
                    <ul className="list-unstyled mt-3 mb-4">
                        <li>Например: Сумка "Royal Black" и др.)</li>

                    </ul>
                    <Button
                        variant={"outline-primary"}
                        className="mt-4 p-2"
                        onClick={() => setDeviceVisible(true)}
                    >
                        Добавить
                    </Button>
                </div>
            </div>

            <CreateBrand show={brandVisible} onHide={() => setBrandVisible(false)}/>
            <CreateDevice show={deviceVisible} onHide={() => setDeviceVisible(false)}/>
            <CreateType show={typeVisible} onHide={() => setTypeVisible(false)}/>
            </div>
        </Container>
    );
};

export default Admin;
