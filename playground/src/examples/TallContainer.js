import React from 'react';
import { View, Text, Dimensions, StyleSheet } from 'react-native';

import Interactable from 'react-native-interactive';

function SomeText() {

    return (
        <Text style={styles.text}>
            {`Some Text`}
        </Text>
    );

}

function TallContainer(props) {

    return (
        <View style={styles.container}>

            <Interactable.View
                snapPoints={[{ x: 0 }]}
                style={styles.interactable}>

                <View
                    style={styles.content}>

                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />
                    <SomeText />

                </View>

            </Interactable.View>

        </View>
    );

}

const { width, height } = Dimensions.get('window');

const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: 'white',
    },
    interactable: {
    },
    content: {
        backgroundColor: 'cyan',
        width,
    },
    text: {
        fontSize: 20,
    },
});

export default TallContainer;
