import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_japanese_words/model/parts_of_speech.dart';
import 'package:study_japanese_words/model/word_model.dart';

final wordListProvider = StateNotifierProvider<WordListNotifier, List<WordModel>>((ref) => WordListNotifier());

class WordListNotifier extends StateNotifier<List<WordModel>>{
  WordListNotifier() : super([
    WordModel(level: 5, chinese: '宛', japanese: '-ずつ', korean: '-씩', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '朝', japanese: 'あさ', korean: '아침', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '朝ご飯', japanese: 'あさごはん', korean: '아침 밥', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '明後日', japanese: 'あさって', korean: '모레', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '足', japanese: 'あし', korean: '1.발 2.걸음 3.보조', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '明日', japanese: 'あした', korean: '내일', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '頭', japanese: 'あたま', korean: '1.머리 2.두부 3.두발', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '後', japanese: 'あと', korean: '1.뒤 2.뒤쪽;후방 3.앞으로;아직', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '兄', japanese: 'あに', korean: '형;오빠', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '姉', japanese: 'あね', korean: '1.언니;손위 누이. 2.배우자의 손위 여자 형제', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '余り', japanese: 'あまり', korean: '1.남은 것;나머지 2.너무; 3.도가 지나침;너무함', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '雨', japanese: 'あめ', korean: '비;우천', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '家', japanese: 'いえ', korean: '1.집 2.주택 3.자택', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '幾つ', japanese: 'いくつ', korean: '1.몇;몇 개 2.몇 살', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: 'いくら', japanese: 'いくら', korean: '1.얼마;어느 정도 2.그리 3.얼마나;얼만큼', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '池', japanese: 'いけ', korean: '1.못 2.연지', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '医者', japanese: 'いしゃ', korean: '의사', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '椅子', japanese: 'いす', korean: '1.의자 2.관직 등의 직위;자리', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一', japanese: 'いち', korean: '1.일 2.하나;첫째 3.하나의;어떤', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一円', japanese: 'いちえん', korean: '1.일원;어떤 장소 일대 2.1엔 3.조금도;전혀;도무지', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一月', japanese: 'いちがつ', korean: '일월;정월', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一時', japanese: 'いちじ', korean: '1.일시 2.한때', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一日', japanese: 'いちにち', korean: '1.일일 2.하루 3.하루종일', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一年', japanese: 'いちねん', korean: '1.일 년 2.한 해', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一倍', japanese: 'いちばい', korean: '1.곱 2.두 배', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一番', japanese: 'いちばん', korean: '1.일번;첫째 2.상책;최상의 방법 3.가장;제일', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一枚', japanese: 'いちまい', korean: '1.일매;한 장 2.논의 한 구획;논배미 3.한 사람', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一回', japanese: 'いっかい', korean: '1.일회 2.한 번 3.한 돌', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一階', japanese: 'いっかい', korean: '1.일층 2.관직의 일계급', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一個·一箇', japanese: 'いっこ', korean: '1.한 개 2.일개;한 사람', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一週間', japanese: 'いっしゅうかん', korean: '일주간', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一杯', japanese: 'いっぱい', korean: '1.일배;한 잔 2.한 그릇에 한 번만 담고 더 주지 않음', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一匹·一疋', japanese: 'いっぴき', korean: '1.한 필 2.한 마리;말 한 마리', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一分', japanese: 'いっぷん', korean: '1.일 분 2.일 푼', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一本', japanese: 'いっぽん', korean: '1.한 자루 2.나무 한 그루', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '何時', japanese: 'いつ', korean: '언제;어느 때', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '五日', japanese: 'いつか', korean: '1.오일 2.닷새 3.초닷새', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '五つ', japanese: 'いつつ', korean: '1.다섯;또, 다섯살', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '何時も', japanese: 'いつも', korean: ' 1.언제나;늘 2.여느 때;보통 때', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '犬·狗', japanese: 'いぬ', korean: '1.개 2.주구;앞잡이', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '今', japanese: 'いま', korean: '1.지금;이제 2.현재의;당대의 3.방금;막', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '意味', japanese: 'いみ', korean: '의미', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '妹', japanese: 'いもうと', korean: '1.누이동생 2.처제', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '入(り)口', japanese: 'いりぐち', korean: '1.입구 2.시초;첫머리', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '色', japanese: 'いろ', korean: '1.색;빛', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '色色·種種', japanese: 'いろいろ', korean: '여러 가지 종류;가지각색', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '上', japanese: 'うえ', korean: '1.위 2.부근;가 3.손윗사람을 이를 때 덧붙이는 말', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '後ろ', japanese: 'うしろ', korean: '1.뒤 2.뒤쪽;그늘 3.등', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '歌', japanese: 'うた', korean: '노래', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '海', japanese: 'うみ', korean: '1.바다 2.호수', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '上着·上衣', japanese: 'うわぎ', korean: '겉옷', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '絵·画', japanese: 'え', korean: '그림', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '映画館', japanese: 'えいがかん', korean: '영화관', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '英語', japanese: 'えいご', korean: '영어', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '駅', japanese: 'えき', korean: '1.역;정거장 2.역참', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '円', japanese: 'えん', korean: '1.둥긂;또, 둥근 것 2.엔', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '鉛筆', japanese: 'えんぴつ', korean: '1.연필 2.‘음경’의 은어', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '大ぜい·大勢', japanese: 'おおぜい', korean: '많은 사람;여럿', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '御母さん', japanese: 'おかあさん', korean: '엄마;어머니', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: 'お菓子', japanese: 'おかし', korean: '과자', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: 'お金·御金', japanese: 'おかね', korean: '돈', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: 'お客さん', japanese: 'おきゃくさん', korean: '1.손님 2.이용하기 좋은 사람', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '奥さん·奥様', japanese: 'おくさん', korean: '부인;아주머니', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: 'お酒', japanese: 'おさけ', korean: '술', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: 'お皿', japanese: 'おさら', korean: '접시', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: 'おじいさん', japanese: 'おじいさん', korean: '1.할아버지 2.영감님', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: 'おじさん', japanese: 'おじさん', korean: '1.아저씨 2.백부·숙부의 높임말', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: 'お茶', japanese: 'おちゃ', korean: '1.차 2.일하는 도중에 잠깐 쉼 3.다도', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: 'お父さん', japanese: 'おとうさん', korean: '아버지', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '弟', japanese: 'おとうと', korean: '1.남동생;아우 2.누이동생', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '男', japanese: 'おとこ', korean: '1.사나이;남자 2.사나이다움;대장부 3.잘생김', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '男の子', japanese: 'おとこのこ', korean: '1.사내아이;아들 2.젊은 남자', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '男の人', japanese: 'おとこのひと', korean: '남자', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一昨日', japanese: 'おととい', korean: '그저께', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '一昨年', japanese: 'おととし', korean: '재작년', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '大人·乙名', japanese: 'おとな', korean: '1.어른;성인 2.어른스러움', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '御中·御腹', japanese: 'おなか', korean: '배', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: 'お兄さん', japanese: 'おにいさん', korean: '형;오빠', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '御姉さん∙御姐さん', japanese: 'おねえさん', korean: '1.언니;누나 2.아가씨 3.아줌마', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
    WordModel(level: 5, chinese: '', japanese: '', korean: '', pos: PartsOfSpeech.noun),
  ]);
}