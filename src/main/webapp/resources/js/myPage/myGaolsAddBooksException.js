document.querySelector('#goalForm').addEventListener('submit', function(event) {
  // 입력 필드 값 가져오기
  const bookTitle = document.getElementById('bookTitle').value.trim();
  const author = document.getElementById('author').value.trim();
  const startDate = document.getElementById('startDate').value.trim();
  const goalDate = document.getElementById('goalDate').value.trim();
  const totalPage = document.getElementById('totalPage').value.trim();

  // 오류 메시지를 저장할 배열
  const errorMessages = [];

  // 날짜 패턴 확인
  const datePattern = /^\d{4}-\d{2}-\d{2}$/;

  // 시작 날짜와 목표 날짜 검증
  if (!startDate) {
    document.getElementById('startDate-exception-field').textContent = '을 입력해주세요.';
    errorMessages.push('을 입력해주세요.');
  } else if (!datePattern.test(startDate)) {
    document.getElementById('startDate-exception-field').textContent = '은 YYYY-MM-DD 형태로 입력해주세요.';
    errorMessages.push('은 YYYY-MM-DD 형태로 입력해주세요.');
  } else {
    document.getElementById('startDate-exception-field').textContent = ''; // 오류 메시지 초기화
  }

  if (!goalDate) {
    document.getElementById('goalDate-exception-field').textContent = '을 입력해주세요.';
    errorMessages.push('을 입력해주세요.');
  } else if (!datePattern.test(goalDate)) {
    document.getElementById('goalDate-exception-field').textContent = '은 YYYY-MM-DD 형태로 입력해주세요.';
    errorMessages.push('은 YYYY-MM-DD 형태로 입력해주세요.');
  } else {
    document.getElementById('goalDate-exception-field').textContent = ''; // 오류 메시지 초기화
  }

  // 날짜 비교 (문자열을 Date 객체로 변환 후 비교)
  if (startDate && goalDate) {
    const start = new Date(startDate);
    const goal = new Date(goalDate);
    if (start > goal) {
      document.getElementById('startDate-exception-field').textContent = '이 목표일자보다 이후입니다.';
      errorMessages.push('이 목표일자보다 이후입니다.');
    }
  }

  // 책 제목 및 저자 검증
  if (!bookTitle) {
    document.getElementById('bookTitle-exception-field').textContent = '을 입력해주세요.';
    errorMessages.push('을 입력해주세요.');
  } else {
    document.getElementById('bookTitle-exception-field').textContent = ''; // 오류 메시지 초기화
  }

  if (!author) {
    document.getElementById('author-exception-field').textContent = '를 입력해주세요.';
    errorMessages.push('를 입력해주세요.');
  } else {
    document.getElementById('author-exception-field').textContent = ''; // 오류 메시지 초기화
  }

  // 총 페이지 검증
  if (!totalPage) {
    document.getElementById('totalPage-exception-field').textContent = '를 입력해주세요.';
    errorMessages.push('를 입력해주세요.');
  } else if (isNaN(totalPage)) {
    document.getElementById('totalPage-exception-field').textContent = '는 숫자만 입력해주세요.';
    errorMessages.push('는 숫자만 입력해주세요.');
  } else {
    document.getElementById('totalPage-exception-field').textContent = ''; // 오류 메시지 초기화
  }

  // 오류 메시지가 있으면 폼 제출 방지
  if (errorMessages.length > 0) {
    event.preventDefault();
  }
});
