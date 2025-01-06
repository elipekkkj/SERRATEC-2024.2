import { Outlet, Link } from "react-router-dom"
import { Headers } from '../components/Headers'

export const Layout = () => {

    return (
        <>
            <Headers />
            <Outlet />
            <Link />
        </>
    )
}