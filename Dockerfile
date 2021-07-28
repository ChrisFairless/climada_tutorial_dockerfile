FROM crease/climada
RUN conda install -c conda-forge jupyterlab
RUN conda clean -afy
WORKDIR /climada/climada_python/docs
CMD ["jupyter", "notebook", "--allow-root", "--ip", "0.0.0.0", "--no-browser"]
