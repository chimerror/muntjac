using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Yarn;
using Yarn.Unity;

public class VariableStorage : VariableStorageBehaviour
{
    Dictionary<string, Value> variables = new Dictionary<string, Value>();

    public override void ResetToDefaults()
    {
    }

    public override void SetValue(string variableName, Value value)
    {
        variables[variableName] = new Value(value);
    }

    public override Value GetValue(string variableName)
    {
        if (!variables.ContainsKey(variableName))
        {
            return Value.NULL;
        }
        else
        {
            return variables[variableName];
        }
    }

    public override void Clear()
    {
        variables.Clear();
    }
}
