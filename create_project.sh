@echo off
setlocal EnableDelayedExpansion

title Transformer From Scratch - Project Generator v2.0

echo .
echo ==============================================================
echo        Build a Transformer From Scratch in PyTorch
echo ==============================================================
echo .

set PROJECT=transformer-from-scratch

if exist "%PROJECT%" (
    echo .
    echo ERROR: Folder "%PROJECT%" already exists.
    pause
    exit /b 1
)

echo Creating project...
echo .

:: ============================================================================
:: Root
:: ============================================================================

mkdir "%PROJECT%"
cd "%PROJECT%"

type nul > README.md
type nul > requirements.txt
type nul > .gitignore
type nul > LICENSE
type nul > config.py

:: ============================================================================
:: Data
:: ============================================================================

mkdir data

type nul > data\qa.csv
type nul > data\train.csv
type nul > data\validation.csv
type nul > data\test.csv

:: ============================================================================
:: Tokenizer
:: ============================================================================

mkdir tokenizer

type nul > tokenizer\__init__.py
type nul > tokenizer\vocabulary.py
type nul > tokenizer\tokenizer.py
type nul > tokenizer\utils.py

:: ============================================================================
:: Dataset
:: ============================================================================

mkdir dataset

type nul > dataset\__init__.py
type nul > dataset\dataset.py
type nul > dataset\dataloader.py
type nul > dataset\preprocessing.py

:: ============================================================================
:: Model
:: ============================================================================

mkdir model

type nul > model\__init__.py
type nul > model\embedding.py
type nul > model\positional_encoding.py
type nul > model\attention.py
type nul > model\multi_head_attention.py
type nul > model\feed_forward.py
type nul > model\layer_norm.py
type nul > model\encoder_layer.py
type nul > model\encoder.py
type nul > model\decoder_layer.py
type nul > model\decoder.py
type nul > model\transformer.py
type nul > model\masks.py

:: ============================================================================
:: Trainer
:: ============================================================================

mkdir trainer

type nul > trainer\__init__.py
type nul > trainer\loss.py
type nul > trainer\optimizer.py
type nul > trainer\trainer.py
type nul > trainer\metrics.py
type nul > trainer\checkpoint.py

:: ============================================================================
:: Inference
:: ============================================================================

mkdir inference

type nul > inference\__init__.py
type nul > inference\greedy.py
type nul > inference\beam_search.py
type nul > inference\predict.py

:: ============================================================================
:: Visualization
:: ============================================================================

mkdir visualization

type nul > visualization\__init__.py
type nul > visualization\attention_heatmap.py
type nul > visualization\embedding_plot.py
type nul > visualization\positional_plot.py
type nul > visualization\tensor_shapes.py
type nul > visualization\model_graph.py

:: ============================================================================
:: Chatbot
:: ============================================================================

mkdir chatbot
mkdir chatbot\templates

type nul > chatbot\app.py
type nul > chatbot\api.py

:: ============================================================================
:: Assets
:: ============================================================================

mkdir assets
mkdir assets\images
mkdir assets\gifs

:: ============================================================================
:: Logs
:: ============================================================================

mkdir logs
type nul > logs\.gitkeep

:: ============================================================================
:: Outputs
:: ============================================================================

mkdir outputs
mkdir outputs\attention
mkdir outputs\embeddings
mkdir outputs\plots

type nul > outputs\attention\.gitkeep
type nul > outputs\embeddings\.gitkeep
type nul > outputs\plots\.gitkeep

:: ============================================================================
:: Saved Models
:: ============================================================================

mkdir saved_models
type nul > saved_models\.gitkeep

:: ============================================================================
:: Checkpoints
:: ============================================================================

mkdir checkpoints
type nul > checkpoints\.gitkeep

:: ============================================================================
:: Scripts
:: ============================================================================

mkdir scripts

:: ============================================================================
:: Examples
:: ============================================================================

mkdir examples

:: ============================================================================
:: Documentation
:: ============================================================================

mkdir docs

:: ============================================================================
:: Configurations
:: ============================================================================

mkdir configs

type nul > configs\default.yaml
type nul > configs\train.yaml
type nul > configs\model.yaml

:: ============================================================================
:: Utilities
:: ============================================================================

mkdir utils

type nul > utils\__init__.py
type nul > utils\logger.py
type nul > utils\device.py
type nul > utils\seed.py
type nul > utils\timer.py
type nul > utils\helpers.py

:: ============================================================================
:: Custom Losses
:: ============================================================================

mkdir losses

type nul > losses\__init__.py

:: ============================================================================
:: Custom Optimizers
:: ============================================================================

mkdir optimizers

type nul > optimizers\__init__.py

:: ============================================================================
:: LR Schedulers
:: ============================================================================

mkdir schedulers

type nul > schedulers\__init__.py

:: ============================================================================
:: Playground
:: ============================================================================

mkdir playground

type nul > playground\playground.py

:: ============================================================================
:: Experiments
:: ============================================================================

mkdir experiments

type nul > experiments\README.md

:: ============================================================================
:: Benchmarks
:: ============================================================================

mkdir benchmarks

type nul > benchmarks\README.md

:: ============================================================================
:: Papers
:: ============================================================================

mkdir papers

type nul > papers\README.md

:: ============================================================================
:: Notebook Archive (Optional)
:: ============================================================================

mkdir notebooks_archive

type nul > notebooks_archive\README.md

:: ============================================================================
:: Tests
:: ============================================================================

mkdir tests

type nul > tests\__init__.py

:: ============================================================================
:: VS Code
:: ============================================================================

mkdir .vscode

type nul > .vscode\settings.json
type nul > .vscode\launch.json

:: ============================================================================
:: Git
:: ============================================================================

git init >nul 2>nul

:: ============================================================================
:: .gitkeep Files
:: ============================================================================

type nul > assets\images\.gitkeep
type nul > assets\gifs\.gitkeep
type nul > docs\.gitkeep
type nul > examples\.gitkeep
type nul > scripts\.gitkeep
type nul > playground\.gitkeep

echo # Transformer From Scratch > README.md

echo .
echo ==============================================================
echo           Project Created Successfully!
echo ==============================================================
echo .
echo Project Location:
echo %cd%
echo .
echo Recommended Next Steps
echo --------------------------------------------------------------
echo 1. python -m venv .venv
echo 2. .venv\Scripts\activate
echo 3. pip install -r requirements.txt
echo 4. code .
echo 5. git add .
echo 6. git commit -m "Initial project structure"
echo .
pause