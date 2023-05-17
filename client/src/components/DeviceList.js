import React, {useContext, useState} from 'react';
import {observer} from "mobx-react-lite";
import {Context} from "../index";
import {Row} from "react-bootstrap";
import DeviceItem from "./DeviceItem";

const DeviceList = observer(() => {
    const [email, setEmail] = useState('');
    const {device} = useContext(Context)

    return (
        <Row className="d-flex">
            <div className="input-group">
                <input value={email}
                       onChange={e => setEmail(e.target.value)}
                       type="search" className="form-control rounded ml-2 mr-2 mt-2"
                       placeholder="Введите наименование продукта" aria-label="Поиск"
                       aria-describedby="search-addon"/>
                <button type="button" className="btn btn-outline-success" onClick={() => device.setName(email)}
                >Поиск</button>

            </div>
            {device.devices.map(device =>
                <DeviceItem key={device.id} device={device}/>
            )}

        </Row>
    );
});

export default DeviceList;
