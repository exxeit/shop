import React, {useContext, useState} from 'react';
import Row from "react-bootstrap/Row";
import {Carousel} from "react-bootstrap";

const Slider = ({device}) => {

    const [index, setIndex] = useState(0);

    const handleSelect = (selectedIndex) => {
        setIndex(selectedIndex);
    };

    return (
        <Carousel className="device_slider" activeIndex={index} onSelect={handleSelect}>
            <Carousel.Item>
                <img
                    className="d-block w-100"
                    src={process.env.REACT_APP_API_URL + device.img}
                    alt="First slide"
                />
            </Carousel.Item>
            {
                device.img2 &&
                <Carousel.Item>
                    <img
                        className="d-block w-100"
                        src={process.env.REACT_APP_API_URL + device.img2}
                        alt="Second slide"
                    />
                </Carousel.Item>
            }
            {
                device.img3 &&
                <Carousel.Item>
                    <img
                        className="d-block w-100"
                        src={process.env.REACT_APP_API_URL + device.img3}
                        alt="Third slide"
                    />
                </Carousel.Item>
            }
        </Carousel>
    );
}

export default Slider;
