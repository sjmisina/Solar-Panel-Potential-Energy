# Machine Learning Mock-up for Solar Data predictions
# Data is housed in PostgreSQL, will be extracted and transformed through Python/Pandas
# Load to the linear regression model below:



# Define the model
nn_model = tf.keras.models.Sequential()
nn_model.add(tf.keras.layers.Dense(units=10,
                                   activation=“relu”,
                                   input_dim=10))
# First hidden layer
nn_model.add(tf.keras.layers.Dense(units=10,
                                   activation=“relu”))
# Second hidden layer
nn_model.add(tf.keras.layers.Dense(units=10,
                                   activation=“relu”))
# Output layer
nn_model.add(tf.keras.layers.Dense(units=1,
                                   activation=“relu”))
# Check the structure of the model
nn_model.summary()

# Compile the model
nn_model.compile(loss=“binary_crossentropy”,
                 optimizer=“adam”,
                 metrics=[“accuracy”])
                 
# Define the checkpoint path and filenames
os.makedirs(“checkpoints/“,exist_ok=True)
checkpoint_path = “checkpoints/"checkpoint_{epoch:02d}.hdf5"

# Create a callback that saves the model’s weights every 5th epoch
cp_callback = ModelCheckpoint(
    filepath=checkpoint_path,
    save_freq=10*5,
    save_weights_only=True,
    verbose=1)
    
# Train the model
fit_model = nn_model.fit(X_train_scaled,
                         y_train,
                         epochs=20,
                         callbacks=[cp_callback])
                         
# Evaluate the model using the test data
model_loss, model_accuracy = nn_model.evaluate(X_test_scaled,y_test,verbose=2)
print(f”Loss: {model_loss}, Accuracy: {model_accuracy}“)
