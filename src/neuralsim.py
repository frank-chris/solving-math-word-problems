import torch
import torch.nn as nn
import torch.nn.functional as F

class NeuralSimilarity(nn.Module):
    def __init__(self):
        super(NeuralSimilarity, self).__init__()
        self.fc = nn.Linear(2304,2)
        
    def forward(self,inp):
        out = self.fc(inp)
        out = F.tanh(out)
        return out
        