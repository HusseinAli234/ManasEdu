<#import "../layout.ftlh" as main>
<@main.layout>
    <div id="card" class="card text-center w-50 mt-5 mb-3">
            <div class="card-header">
                Создание колоды
            </div>
            <div class="card-body">
                <form class="stackForm" method="post">
                <div class="form-group">
                    <label for="exampleInputEmail1">Название колоды</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="cardName" placeholder="Название колоды">
                    <small id="emailHelp" class="form-text text-muted">Придумайте название колоды</small>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Описание колоды</label>
                    <textarea style="resize: none; height: 200px;" name="description" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
<#--                    <#if _csrf??>-->
<#--                        <input type="hidden" name="${(_csrf.parameterName)!'csrf-param-name'}"-->
<#--                               value="${(_csrf.token)!'csrf-token'}"/>-->
<#--                    </#if>-->
                <button type="submit" class="btn btn-primary">Создать</button>
                </form>
            </div>
            <div class="card-footer text-body-secondary">
            </div>
        </div>
    <script>
        const csrfHeader = document.querySelector('meta[name="_csrf_header"]').getAttribute('content');
        const csrfToken = document.querySelector('meta[name="_csrf_token"]').getAttribute('content');
        document.addEventListener("DOMContentLoaded", function () {
            let form = document.querySelector('.stackForm');
            let stack = document.getElementById('card');
            form.addEventListener('submit', function (event) {
                event.preventDefault();
                let data = {
                    cardName: document.getElementById('exampleInputEmail1').value,
                    description: document.getElementById('exampleFormControlTextarea1').value
                };

                fetch("/add_stack",
                    {
                        method: 'POST',
                        body: data,
                        headers: {
                            [csrfHeader]: csrfToken,
                        }
                    }
                )
                stack.classList.add('animate__animated', 'animate__fadeOut', 'animate__slow');
                stack.addEventListener('animationend', function () {

                    stack.parentNode.removeChild(stack);
                });
                setTimeout(function () {
                    var newCard = document.createElement("div");
                    newCard.id = "card";
                    newCard.className = "card text-center w-50 mt-5 mb-3";
                    newCard.innerHTML = `
            <div class="card-header">
                Создание карты
            </div>
            <div class="card-body">
                <form class="form" method="post">
                    <div class="form-group">
                        <label for="InputQuestion">Вопрос</label>
                        <input type="text" class="form-control" id="InputQuestion" aria-describedby="emailHelp" name="question" placeholder="Вопрос">
                        <small id="emailHelp" class="form-text text-muted">Напишите вопрос</small>
                    </div>
                    <div class="form-group">
                        <label for="InputAnswer">Ответ</label>
                        <input type="text" class="form-control" id="InputAnswer" aria-describedby="emailHelp" name="answer" placeholder="Ответ">
                        <small id="emailHelp" class="form-text text-muted">Напишите ответ</small>
                    </div>
                    <#if _csrf??>
                        <input type="hidden" name="${(_csrf.parameterName)!'csrf-param-name'}"
                               value="${(_csrf.token)!'csrf-token'}"/>
                    </#if>
                    <button type="submit" class="btn btn-primary">Добавить</button>
                </form>
            </div>
            <div class="card-footer text-body-secondary">
            </div>
        `;
                    document.querySelector('.main-container').appendChild(newCard);
                    newCard.classList.add("animate__will","animate__appear");
                },2000)
            });
        });
    </script>

</@main.layout>