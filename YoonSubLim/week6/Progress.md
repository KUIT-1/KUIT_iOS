# 진행도 / 트러블슈팅

- Collection View 페이지에 따른 탭바 구현 간 문제
    - `**문제**`
        
        음식 카테고리를 Horizonal 하게 Collection View 로 구성했다.
        
        그리고 하단에 Table View 를 위치해서, 상단의 Collection View Cell 을 클릭했을 때,
        
        해당 Cell 의 카테고리명 Label 의 색상 값을 바꾸고 (선택됨을 의미),
        
        하단 Table View 의 Cell 들을 갱신하고자 했다.
        
        근데 코드를 구성하다보니, 화면에 보이는 부분의 Table View Cell 들은 갱신되지 않아서,
        
        기존 카테고리 음식들 + 갱신된 부분(화면에 보이지 않던 부분) 이 혼재되어 있었다.
        
    - `**원인**`
        
        어떻게 해결해야 하나 고민을 해봤는데,
        
        1. Collection View Cell 을 클릭했을 때, Table View 의 모든 Cell 들을 다시 그려준다.
            
            : 다시 그리는 거라, 제대로 반영은 되겠지만 좋은 방법인지는 모르겠다. 탭바로 전환되는 게 아니라, 전환되는 것처럼 보이는 것 뿐인 것 같음.
            
        2. 여러 Table View 를 Collection View Cell 클릭 시마다 찾아서 탭바처럼 구현.
            
            : 더 좋은 방법인 거 같지만, Tab bar navigator 를 embed in 해서 해야하는 건가 ?
            
    - `**해결**`
        
        
    - `**레퍼런스**`
    
---

- **info.plist 을 찾을 수 없음**
    - `**문제**`
        
        **Build input file cannot be found ~~**
        
        info.plist 파일을 찾을 수 없다고 했다.
        
    - `**원인**`
        
        Storyboard 들과 ViewController 들을 그룹화 하는 과정에서 깔끔하게 Assets 과 Info 파일 또한 ㄴSettings 라는 그룹으로 묶어주었는데,
        
        Build Settings 에 설정되어 있던 info.plist 의 경로는 수정되지 않아서 해당 파일을 찾을 수 없었던 것이다.
        
        즉,
        
        `week6/Info.plist` → `week6/Settings/Info.plist` 한 것이 반영되지 않았다.
        
    - `**해결**`
        
        프로젝트 기본 설정에 들어가서
        
        Targets : week6 → Build Settings → Packaging → Info.plist File 의 값을
        
        `week6/Settings/Info.plist` 로 수정
        
        Info 파일은 그냥 있는 그대로 놔두는 게 낫나 싶다 ..!
        
    - `**레퍼런스**`
        
        [[iOS] Build input file cannot be found 오류 해결](https://vanillacreamdonut.tistory.com/241)
        
    
    ---
