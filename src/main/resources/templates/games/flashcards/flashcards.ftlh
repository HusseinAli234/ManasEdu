<#import "../../layout.ftlh" as main>
<@main.layout>
    <div class="row row-cols-1 row-cols-md-2 g-4 mt-2 ">
        <#list stacks as stack>
        <div class="col flashcard">
            <div class="card h-auto w-30 text-center">
                <img src="/static/image/default_card.png" class="card-img-top p-1" style="width: 80px; height: 80px; margin: auto;"  alt="...">
                <div class="card-body" style="border-top:gray 1px solid ">
                    <h5 class="card-title">${stack.name}</h5>
                    <p class="card-text">${stack.description}</p>
                </div>
                <button type="button" class="btn btn-success">Участвовать</button>
            </div>
        </div>
        </#list>
    </div>
</@main.layout>