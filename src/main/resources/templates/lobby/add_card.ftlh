<#import "../layout.ftlh" as main>
<@main.layout>
    <div id="card" class="card text-center w-50 mt-5 mb-3">
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
                <button type="submit" class="btn btn-primary">Создать</button>
            </form>
        </div>
        <div class="card-footer text-body-secondary">
        </div>
    </div>
</@main.layout>