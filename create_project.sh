#!/bin/bash

###############################################################################
# Build a Transformer From Scratch in PyTorch
# Project Generator v2.0 (macOS/Linux)
###############################################################################

set -e

PROJECT="transformer-from-scratch"

echo
echo "=============================================================="
echo " Build a Transformer From Scratch in PyTorch"
echo "=============================================================="
echo

if [ -d "$PROJECT" ]; then
    echo "ERROR: Folder '$PROJECT' already exists."
    exit 1
fi

echo "Creating project..."

###############################################################################
# Root
###############################################################################

mkdir -p "$PROJECT"
cd "$PROJECT"

touch README.md
touch ROADMAP.md
touch CHANGELOG.md
touch CONTRIBUTING.md
touch requirements.txt
touch .gitignore
touch LICENSE
touch config.py

###############################################################################
# Data
###############################################################################

mkdir -p data

touch data/qa.csv
touch data/train.csv
touch data/validation.csv
touch data/test.csv

###############################################################################
# Tokenizer
###############################################################################

mkdir -p tokenizer

touch tokenizer/__init__.py
touch tokenizer/vocabulary.py
touch tokenizer/tokenizer.py
touch tokenizer/utils.py

###############################################################################
# Dataset
###############################################################################

mkdir -p dataset

touch dataset/__init__.py
touch dataset/dataset.py
touch dataset/dataloader.py
touch dataset/preprocessing.py

###############################################################################
# Model
###############################################################################

mkdir -p model

touch model/__init__.py
touch model/embedding.py
touch model/positional_encoding.py
touch model/attention.py
touch model/multi_head_attention.py
touch model/feed_forward.py
touch model/layer_norm.py
touch model/encoder_layer.py
touch model/encoder.py
touch model/decoder_layer.py
touch model/decoder.py
touch model/transformer.py
touch model/masks.py

###############################################################################
# Trainer
###############################################################################

mkdir -p trainer

touch trainer/__init__.py
touch trainer/loss.py
touch trainer/optimizer.py
touch trainer/trainer.py
touch trainer/metrics.py
touch trainer/checkpoint.py

###############################################################################
# Inference
###############################################################################

mkdir -p inference

touch inference/__init__.py
touch inference/greedy.py
touch inference/beam_search.py
touch inference/predict.py

###############################################################################
# Visualization
###############################################################################

mkdir -p visualization

touch visualization/__init__.py
touch visualization/attention_heatmap.py
touch visualization/embedding_plot.py
touch visualization/positional_plot.py
touch visualization/tensor_shapes.py
touch visualization/model_graph.py

###############################################################################
# Chatbot
###############################################################################

mkdir -p chatbot/templates

touch chatbot/app.py
touch chatbot/api.py

###############################################################################
# Assets
###############################################################################

mkdir -p assets/images
mkdir -p assets/gifs

touch assets/images/.gitkeep
touch assets/gifs/.gitkeep

###############################################################################
# Outputs
###############################################################################

mkdir -p outputs/attention
mkdir -p outputs/embeddings
mkdir -p outputs/plots

touch outputs/attention/.gitkeep
touch outputs/embeddings/.gitkeep
touch outputs/plots/.gitkeep

###############################################################################
# Logs
###############################################################################

mkdir -p logs
touch logs/.gitkeep

###############################################################################
# Saved Models
###############################################################################

mkdir -p saved_models
touch saved_models/.gitkeep

###############################################################################
# Checkpoints
###############################################################################

mkdir -p checkpoints
touch checkpoints/.gitkeep

###############################################################################
# Scripts
###############################################################################

mkdir -p scripts

###############################################################################
# Examples
###############################################################################

mkdir -p examples

###############################################################################
# Docs
###############################################################################

mkdir -p docs
touch docs/.gitkeep

###############################################################################
# Configs
###############################################################################

mkdir -p configs

touch configs/default.yaml
touch configs/model.yaml
touch configs/train.yaml

###############################################################################
# Utils
###############################################################################

mkdir -p utils

touch utils/__init__.py
touch utils/logger.py
touch utils/device.py
touch utils/seed.py
touch utils/timer.py
touch utils/helpers.py

###############################################################################
# Losses
###############################################################################

mkdir -p losses
touch losses/__init__.py

###############################################################################
# Optimizers
###############################################################################

mkdir -p optimizers
touch optimizers/__init__.py

###############################################################################
# Schedulers
###############################################################################

mkdir -p schedulers
touch schedulers/__init__.py

###############################################################################
# Playground
###############################################################################

mkdir -p playground
touch playground/playground.py

###############################################################################
# Experiments
###############################################################################

mkdir -p experiments
touch experiments/README.md

###############################################################################
# Benchmarks
###############################################################################

mkdir -p benchmarks
touch benchmarks/README.md

###############################################################################
# Papers
###############################################################################

mkdir -p papers
touch papers/README.md

###############################################################################
# Notebook Archive
###############################################################################

mkdir -p notebooks_archive
touch notebooks_archive/README.md

###############################################################################
# Tests
###############################################################################

mkdir -p tests
touch tests/__init__.py

###############################################################################
# VS Code
###############################################################################

mkdir -p .vscode

touch .vscode/settings.json
touch .vscode/launch.json

###############################################################################
# Git
###############################################################################

git init

###############################################################################
# Finish
###############################################################################

echo "# Transformer From Scratch" > README.md

echo
echo "=============================================================="
echo "Project created successfully!"
echo "=============================================================="
echo
echo "Location:"
pwd
echo
echo "Next Steps:"
echo "------------------------------------------"
echo "python3 -m venv .venv"
echo "source .venv/bin/activate"
echo "pip install -r requirements.txt"
echo "code ."
echo