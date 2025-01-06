import { View, Text, Image, StyleSheet } from "react-native";
import React from "react";
import { DrawerContentScrollView, DrawerItemList } from "@react-navigation/drawer";

export default function CustomDrawer(props) {
    return (
        <DrawerContentScrollView>
            <View style={styles.container}>
                <Image
                    source={require("../../assets/pngwing.com.png")}
                    style={{ width: 70, height: 70 }}
                />
                <Text style={styles.text}>Bem vindo ao APP</Text>
            </View>
            <DrawerItemList {...props} />
        </DrawerContentScrollView>
    );
}

const styles = StyleSheet.create({
    container: {
        width: "100%",
        height: 85,
        alignItems: "center",
        justifyContent: "center",
    },
    text: {
        fontSize: 16,
        color: "#121212",
    },
});