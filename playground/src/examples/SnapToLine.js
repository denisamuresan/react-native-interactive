import React, { Component } from 'react';
import { StyleSheet, View } from 'react-native';
import Interactable from 'react-native-interactive';

export default class SnapToLine extends Component {
  render() {
    return (
      <View style={styles.container}>
        <Interactable.View
          snapPoints={[
            {x: 0},
          ]}
          initialPosition={{x: 0, y: 0}}>
          <View style={{width: 70, height: 70, backgroundColor: 'red', borderRadius: 35}} />
        </Interactable.View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: 'white',
  }
});
