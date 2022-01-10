FROM python:3.8
RUN pip install streamlit
RUN pip install numpy
RUN pip install pandas
RUN pip install plotly
RUN pip install scikit-learn
COPY . /app
WORKDIR /app
EXPOSE 8501
# ENTRYPOINT ["streamlit","run"]
CMD ["streamlit", "run", "app.py", "--server.port=8501"]