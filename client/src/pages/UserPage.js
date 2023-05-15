import React, {useContext, useEffect, useState} from 'react';
import {Container, Form, Image} from "react-bootstrap";
import {useHistory,} from "react-router-dom";
import {Context} from "../index";
import {fetchOneDevice, myFav} from "../http/deviceAPI";
import {DEVICE_ROUTE} from "../utils/consts";
import {changePhoto, getMe} from "../http/userAPI";



const UserPage = () => {
    const {user} = useContext(Context)
    const history = useHistory()
    const [devices, setDevices] = useState([])
    const [file, setFile] = useState(null)
    const [saveButtonDisabled, setSaveButtonDisabled] = useState(true)
    useEffect(async () => {
        let res = await myFav(user.id)
        let devices = [];

        for (let i = 0; i < res.length; i++) {
            let device = await fetchOneDevice(res[i].deviceId);
            devices.push(device);
        }
        setDevices(devices);
    }, [])

    const selectFile = e => {
        const selectedFile = e.target.files[0]
        if (selectedFile && selectedFile.type.startsWith('image/')) {
            setFile(selectedFile)
            setSaveButtonDisabled(false)
        } else {
            setFile(null)
            setSaveButtonDisabled(true)
        }
    }

    const savePhoto = async () => {
        if (saveButtonDisabled) return null
        await changePhoto(file)
        const data = await getMe()
        user.setUser(data)
    }

    return (
        <Container>
            <h4>Изменить фото:</h4>
            <Form.Control
                className="mt-3"
                type="file"
                onChange={selectFile}
            />
            <div
                className="save_photo"
                onClick={savePhoto}
                disabled={saveButtonDisabled}
                style={{opacity: saveButtonDisabled ? 0.5 : 1}}
            >
                Сохранить фото
            </div>
            <hr/>
            <h4>Избранные товары:</h4>
            <div>
                {devices.map((device, index) => (
                    <div
                        className='fav_item'
                        key={index}
                        onClick={() => history.push(DEVICE_ROUTE + '/' + device.id)}
                    >
                        <p><b>{device.name}</b></p>
                        <Image style={{maxHeight:50}} src={process.env.REACT_APP_API_URL + device.img}/>
                        <p>Цена: {device.price} р.</p>
                    </div>
                ))}
            </div>

        </Container>
    );
};

export default UserPage;