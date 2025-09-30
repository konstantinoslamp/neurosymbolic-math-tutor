# Neurosymbolic AI Math Tutor

An intelligent mathematical tutoring system that combines **neural networks** for handwriting recognition with **symbolic computation** for algebraic equation solving. This project demonstrates the power of neurosymbolic AI by seamlessly integrating pattern recognition with logical reasoning.

## Project Overview

The system processes handwritten mathematical equations through a complete pipeline:
1. **Image Processing**: Preprocesses and segments handwritten equation images
2. **Neural Recognition**: Uses CNN to recognize individual mathematical symbols
3. **Symbolic Solving**: Applies rule-based algebraic manipulation for step-by-step solutions
4. **Educational Feedback**: Provides detailed solution explanations

## Architecture

```
Handwritten Equation Image
           ↓
    [Image Preprocessing]
           ↓
     [Symbol Segmentation] 
           ↓
   [Neural Symbol Recognition] ← CNN Model
           ↓
   [Equation Construction]
           ↓
   [Symbolic Math Solving] ← SymPy Engine
           ↓
  [Step-by-step Solution]
```

## Neurosymbolic Approach

This project exemplifies **neurosymbolic AI** by combining:

- **Neural Component**: Deep learning for pattern recognition
  - Convolutional Neural Networks for symbol classification
  - Image preprocessing and segmentation algorithms
  - Confidence-based recognition scoring

- **Symbolic Component**: Logic-based mathematical reasoning  
  - SymPy for algebraic manipulation and equation solving
  - Rule-based equation parsing and validation
  - Step-by-step solution generation

## Features

- **Handwriting Recognition**: Processes handwritten mathematical equations
- **Symbol Detection**: Identifies digits, operators, variables, and special symbols
- **Equation Parsing**: Converts recognized symbols into valid mathematical expressions
- **Algebraic Solving**: Solves linear and quadratic equations step-by-step
- **Solution Validation**: Verifies mathematical correctness of solutions
- **Educational Output**: Provides detailed explanation of solving process
- **Docker Support**: Containerized environment with all dependencies
- **Jupyter Integration**: Interactive notebook interface for experimentation

## Supported Symbols

| Category | Symbols |
|----------|---------|
| Digits | `0, 1, 2, 3, 4, 5, 6, 7, 8, 9` |
| Operators | `+, -, *, /, =, ^` |
| Variables | `x, y, z` |
| Parentheses | `(, )` |

## Technology Stack

- **Deep Learning**: TensorFlow/Keras for neural networks
- **Computer Vision**: OpenCV for image processing
- **Symbolic Math**: SymPy for algebraic computation
- **Scientific Computing**: NumPy, SciPy for numerical operations
- **Visualization**: Matplotlib for plotting and analysis
- **Environment**: Docker for containerization
- **Interface**: Jupyter Lab for interactive development

## Installation & Setup

### Prerequisites
- Docker Desktop
- Git

### Quick Start

1. **Clone the repository**
```bash
git clone https://github.com/yourusername/neurosymbolic-math-tutor.git
cd neurosymbolic-math-tutor
```

2. **Build the Docker image**
```bash
docker build -f Dockerfile.cpu -t math-tutor:latest .
```

3. **Run the container**
```bash
docker run --rm -it -p 8888:8888 -v $(pwd)/data:/app/data math-tutor:latest
```

4. **Access Jupyter Lab**
   - Open the provided URL in your browser (check terminal output for token)
   - Navigate to `main.ipynb`

### Local Development

If you prefer local installation:

```bash
pip install -r requirements.txt
jupyter lab
```

## Usage

### 1. Prepare Equation Images
- Place handwritten equation images in the `data/` folder
- Supported formats: PNG, JPG, JPEG, BMP, TIFF
- Examples: `2x+3=7`, `x^2-4=0`, `3y-6=9`

### 2. Run the Demo
- Open `main.ipynb` in Jupyter Lab
- Run cells sequentially:
  - **Cell 12**: Scan for images in data folder
  - **Cell 13**: Process all images through the neurosymbolic pipeline

### 3. View Results
The system will output:
- Image preprocessing details
- Symbol segmentation results
- Neural network predictions (simulated until trained)
- Step-by-step algebraic solutions
- Mathematical validation

## Example Output

```
NEUROSYMBOLIC AI MATH TUTOR - FULL DEMO
============================================================

DEMO 1: Processing equation_1.png
============================================================

Image Info: equation_1.png
   - Shape: (150, 400) (height x width)
   - Data type: uint8
   - Min pixel value: 0
   - Max pixel value: 255

Starting equation segmentation...
Found 6 contours in the image
Segmentation complete! Found 5 valid segments

NEURAL RECOGNITION:
  Symbol 1: '2' (confidence: 0.950) at position (50, 80)
  Symbol 2: 'x' (confidence: 0.890) at position (90, 80)
  Symbol 3: '+' (confidence: 0.975) at position (130, 80)
  Symbol 4: '3' (confidence: 0.920) at position (180, 80)
  Symbol 5: '=' (confidence: 0.985) at position (230, 80)
  Symbol 6: '7' (confidence: 0.940) at position (280, 80)

Recognized equation: '2x+3=7'

SYMBOLIC SOLVING:
  Step 1: Original equation: Eq(2*x + 3, 7)
  Step 2: Move all terms to left: Eq(2*x + 3 - 7, 0)
  Step 3: Simplify: Eq(2*x - 4, 0)
  Step 4: Solution: x = [2]

Solution validation: PASSED
```

## Research Applications

This project demonstrates key concepts in:

- **Neurosymbolic AI**: Integration of neural and symbolic approaches
- **Computer Vision**: Image preprocessing and pattern recognition
- **Educational Technology**: AI-powered tutoring systems
- **Mathematical Software**: Automated problem solving
- **Human-Computer Interaction**: Handwriting-based interfaces

## Educational Value

Perfect for learning:
- Deep learning architectures (CNNs)
- Computer vision pipelines
- Symbolic computation systems
- Docker containerization
- Scientific Python ecosystem
- Neurosymbolic AI principles

### Development Setup

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## References

- [SymPy Documentation](https://docs.sympy.org/)
- [TensorFlow Tutorials](https://www.tensorflow.org/tutorials)
- [OpenCV Python Documentation](https://docs.opencv.org/4.x/d6/d00/tutorial_py_root.html)
- [Neurosymbolic AI Research](https://arxiv.org/abs/2105.05330)

## 🙏 Acknowledgments

- Built for PhD research in neurosymbolic AI systems
- Inspired by the need for intelligent educational technology
- Special thanks to the open-source community for amazing tools