import { createDrawerNavigator } from "@react-navigation/drawer";
import Home from "../screens/Home";
import Sobre from "../screens/Sobre";
import Contato from "../screens/Contato";
import CustomDrawer from "../components/CustomDrawer";

export default function Routes() {
    const Drawer = createDrawerNavigator();
    return (
        <Drawer.Navigator
            drawerContent={CustomDrawer}
            screenOptions={{
                drawerActiveBackgroundColor: "#15b0d3",
                drawerInactiveBackgroundColor: "#e2e2e2",
                drawerActiveTintColor: "black",
                drawerInactiveTintColor: "black",
                drawerStyle: {
                    width: 250,
                },
            }}
        >
            <Drawer.Screen name="Home" component={Home} />
            <Drawer.Screen name="Sobre" component={Sobre} />
            <Drawer.Screen name="Contato" component={Contato} />
        </Drawer.Navigator>
    );
}



