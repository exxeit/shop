import Admin from "./pages/Admin";
import {
    ADMIN_ROUTE,
    BASKET_ROUTE,
    DEVICE_ROUTE,
    LOGIN_ROUTE,
    REGISTRATION_ROUTE,
    SHOP_ROUTE,
    ORDER_MAKE,
    ABOUT_ROUTE,
    USER_PAGE_ROUTE
} from "./utils/consts";
import Basket from "./pages/Basket";
import Shop from "./pages/Shop";
import Auth from "./pages/Auth";
import DevicePage from "./pages/DevicePage";
import MakeOrderPage from './pages/MakeOrderPage';
import AboutUsPage from "./pages/AboutUsPage";
import UserPage from "./pages/UserPage";

export const adminRoutes = [
    {
        path: ADMIN_ROUTE,
        Component: Admin
    },
]

export const publicRoutes = [
    {
        path: SHOP_ROUTE,
        Component: Shop
    },
    {
        path: LOGIN_ROUTE,
        Component: Auth
    },
    {
        path: REGISTRATION_ROUTE,
        Component: Auth
    },
    {
        path: DEVICE_ROUTE + '/:id',
        Component: DevicePage
    },
    {
        path: ORDER_MAKE + '/:id',
        Component: MakeOrderPage
    },
    {
        path: ABOUT_ROUTE,
        Component: AboutUsPage
    },
    {
        path: USER_PAGE_ROUTE,
        Component: UserPage
    }
]
