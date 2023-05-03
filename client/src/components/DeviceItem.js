import React from 'react';
import {Card, Col} from "react-bootstrap";
import Image from "react-bootstrap/Image";
import star from '../assets/star.png'
import {useHistory} from "react-router-dom"
import {DEVICE_ROUTE} from "../utils/consts";

const DeviceItem = ({device}) => {
    const history = useHistory()
    return (
        <Col md={6} className={"mt-3"} onClick={() => history.push(DEVICE_ROUTE + '/' + device.id)}>

            <div className="card mb-4 box-shadow">
                <Image style={{maxHeight:300}} src={process.env.REACT_APP_API_URL + device.img}/>



                <div className="card-body">
                    <p className="card-text">{device.name}</p>
                    <div className="d-flex justify-content-between align-items-center">
                        <div className="btn-group">
                            <button type="button" className="btn btn-sm btn-outline-info">Подробнее</button>

                        </div>
                        <small className="text-success">{device.price} руб.</small>
                    </div>
                </div>
            </div>

        </Col>
    );
};

export default DeviceItem;
