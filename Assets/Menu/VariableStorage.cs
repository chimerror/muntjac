using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Yarn;
using Yarn.Unity;

public class VariableStorage : VariableStorageBehaviour
{
    Dictionary<string, Value> variables = new Dictionary<string, Value>();

    public static VariableStorage Instance { get; private set; }

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

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else if (Instance != this)
        {
            Debug.LogAssertion("Two VariableStorages present!");
            Destroy(gameObject);
        }

        DontDestroyOnLoad(gameObject);
    }
}
