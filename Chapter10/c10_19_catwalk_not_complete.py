"""
  Name     : c10_16_catwalk_not_complete.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/23/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

import datetime
import pandas
from sqlalchemy import create_engine
from metta import metta_io as metta
from catwalk.storage import FSModelStorageEngine, CSVMatrixStore
from catwalk.model_trainers import ModelTrainer
from catwalk.predictors import Predictor
from catwalk.evaluation import ModelEvaluator
from catwalk.utils import save_experiment_and_get_hash
help(FSModelStorageEngine)
