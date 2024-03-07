# Use an official Jupyter base image
FROM jupyter/base-notebook

# Copy the Jupyter Notebook file into the container
COPY ["ENSF 619 A1.ipynb", "./"]

# Install additional dependencies
RUN pip install numpy pandas scikit-learn matplotlib Pillow tensorflow tqdm wordcloud 

# Expose the default Jupyter port
EXPOSE 8888

# Start Jupyter Notebook when the container launches
CMD ["start-notebook.sh", "--NotebookApp.token=''"]

