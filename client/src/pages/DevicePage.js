import React, {useContext, useEffect, useState} from 'react';
import {Button, Card, Col, Container, Form, Image, Row} from "react-bootstrap";

import {useHistory, useParams} from 'react-router-dom'
import {addToFav, delToFav, fetchOneDevice, isFav, updateName, updatePhoto, updatePrice} from "../http/deviceAPI";
import {ORDER_MAKE, SHOP_ROUTE} from "../utils/consts";
import {Context} from "../index";
import {deleteDevice} from "../http/deviceAPI";

import star from '../assets/star.png';
import goldStar from '../assets/goldStar.png';
import {changePhoto} from "../http/userAPI";

const DevicePage = () => {
    const [isFavorite, setIsFavorite] = useState(false);
    const [editPrice, setEditPrice] = useState(false)
    const [editName, setEditName] = useState(false)
    const [file, setFile] = useState(null)
    const [saveButtonDisabled, setSaveButtonDisabled] = useState(true)

    const history = useHistory()
    const {user} = useContext(Context)
    const [isAdmin, setIsAdmin] = useState(user.isAdmin)
    // const [isAdmin, setIsAdmin] = useState(false)
    const [device, setDevice] = useState({info: []})
    const [newPrice, setNewPrice] = useState(device.price);
    const [newName, setNewName] = useState(device.name);
    const {id} = useParams()
    const toggleFavorite = async () => {
        if (isFavorite) {
            await delToFav(id, user.id);
        } else {
            await addToFav(id, user.id);
        }

        setIsFavorite(!isFavorite);
    };

    const handlePriceChange = (event) => {
        setNewPrice(event.target.value);
    };

    const handleNameChange = (event) => {
        setNewName(event.target.value);
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

    const handleSubmitPrice = async (event) => {
        event.preventDefault();
        const data = await updatePrice(id, newPrice);
        setNewPrice(data.price)
        setEditPrice(false)
    };

    const handleSubmitName = async (event) => {
        event.preventDefault();
        const data = await updateName(id, newName);
        setNewName(data.name)
        setEditName(false)
    };

    useEffect(() => {
        setNewPrice(device.price)
        setNewName(device.name)
    }, [device.price, device.name]);

    // photo
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
        let data = await updatePhoto(id ,file)
        fetchOneDevice(id).then(data => setDevice(data))
    }

    return (
        <Container className="mt-3">
            <Row>
                <Col md={7}>
                    <Image style={{maxHeight:300}} src={process.env.REACT_APP_API_URL + device.img}/>
                    {
                        isAdmin
                            ? <div>
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
                            </div>
                            : <></>
                    }
                </Col>
                <Col md={4}>
                    <Card
                        className="d-flex flex-column align-items-center justify-content-around"
                        style={{width: 450, height: 300, fontSize: 34}}
                    >
                        {
                            editName
                                ? <><input style={{width: 300, height: 45}} value={newName} onChange={handleNameChange} type="text"></input><div className="save_btn" onClick={handleSubmitName}><p>Save</p></div></>
                                : <h5 onClick={() => isAdmin && setEditName(true)}>{newName}</h5>
                        }
                        {
                            editPrice
                                ? <><input style={{width: 300, height: 45}} value={newPrice} onChange={handlePriceChange} type="number" min="1"></input><div className="save_btn" onClick={handleSubmitPrice}><p>Save</p></div></>
                                : <h3 onClick={() => isAdmin && setEditPrice(true)} color="skyblue">Цена: {newPrice} руб.</h3>
                        }
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
