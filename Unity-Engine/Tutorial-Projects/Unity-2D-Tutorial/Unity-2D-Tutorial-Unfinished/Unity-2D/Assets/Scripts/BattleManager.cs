using System.Collections;
using System.Collections.Generic;
using Navigation;
using UnityEngine;

public class BattleManager : MonoBehaviour
{
    [SerializeField] private GameObject[] enemySpawnPoints;
    [SerializeField] private GameObject[] enemyPrefab;
    [SerializeField] private GameObject introPanel;
    [SerializeField] private AnimationCurve spawnAnimationCurve;
    [SerializeField] private CanvasGroup theButtons;

    private Animator _battleStateManger;
    private Animator _introPanelAnimator;
    private Dictionary<int,BattleState> _battleStateHash = new Dictionary<int, BattleState>();
    private BattleState _currentBattleState;
    private int _enemyCount;
    private static readonly int BattleReady = Animator.StringToHash("BattleReady");
    private static readonly int Intro = Animator.StringToHash("Intro");

    public enum BattleState
    {
        Begin_Battle,
        Intro,
        Player_Move,
        Player_Attack,
        Change_Control,
        Enemy_Attack,
        Battle_Result,
        Battle_End
    }

    private void Awake()
    {
        _introPanelAnimator = introPanel.GetComponent<Animator>();
        _battleStateManger = GetComponent<Animator>();
        if (_battleStateManger == null)
        {
            Debug.LogError("No BattleStateMachine Animator Found.");
        }
    }
    
    private void Start()
    {
        GetAnimationStates();
        _enemyCount = Random.Range(1, enemySpawnPoints.Length);
        StartCoroutine(SpawnEnemies());
        
    }

    private void Update()
    {
        _currentBattleState = _battleStateHash[_battleStateManger.GetCurrentAnimatorStateInfo(0).shortNameHash];
        switch (_currentBattleState)
        {
            case BattleState.Intro:
                _introPanelAnimator.SetTrigger(Intro);
                break;
            case BattleState.Player_Move:
                break;
            case BattleState.Player_Attack:
                break;
            case BattleState.Change_Control:
                break;
            case BattleState.Enemy_Attack:
                break;
            case BattleState.Battle_Result:
                break;
            case BattleState.Battle_End:
                break;
        }
        if (_currentBattleState == BattleState.Player_Move)
        {
            theButtons.alpha = 1;
            theButtons.interactable = true;
            theButtons.blocksRaycasts = true;
        }
        else
        {
            theButtons.alpha = 0;
            theButtons.interactable = false;
            theButtons.blocksRaycasts = false;
        }
    }

    public void RunAway()
    {
        GameState.JustExitedBattle = true;
        NavigationManager.NavigateTo("Overworld");
    }

    private IEnumerator SpawnEnemies()
    {
        for (int i = 0; i < _enemyCount; i++)
        {
            var newEnemy = Instantiate(enemyPrefab[0]);
            newEnemy.transform.position = new Vector3(10, -1, 0);

            yield return StartCoroutine(MoveCharacterToPoint(enemySpawnPoints[i], newEnemy));
            newEnemy.transform.parent = enemySpawnPoints[i].transform;
        }
        _battleStateManger.SetBool(BattleReady,true);
    }

    private IEnumerator MoveCharacterToPoint(GameObject destination, GameObject character)
    {
        float timer = 0f;
        var startPosition = character.transform.position;
        if (spawnAnimationCurve.length > 0)
        {
            while (timer < spawnAnimationCurve.keys[spawnAnimationCurve.length - 1].time)
            {
                character.transform.position = Vector3.Lerp(startPosition, destination.transform.position,
                    spawnAnimationCurve.Evaluate(timer));
                timer += Time.deltaTime;
                yield return new WaitForEndOfFrame();
            }
        }
        else
        {
            character.transform.position = destination.transform.position;
        }
    }

    //---Something to do with animation states only referencable in hashes
    private void GetAnimationStates()
    {
        foreach (var state in (BattleState[]) System.Enum.GetValues(typeof(BattleState)))
        {
            _battleStateHash.Add(Animator.StringToHash(state.ToString()),state);
        }
    }
}