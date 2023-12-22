<#import "../layout.ftlh" as main>
<@main.layout>


        <div class="card text-center w-50 mt-5 mb-3">
            <div class="card-header">
                Создание колоды
            </div>
            <div class="card-body">
                <form>
                <div class="form-group">
                    <label for="exampleInputEmail1">Название колоды</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Название колоды">
                    <small id="emailHelp" class="form-text text-muted">Придумайте название колоды</small>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Описание колоды</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
<#--                <div class="form-group">-->
<#--                    <label for="exampleInputPassword1">Password</label>-->
<#--                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">-->
<#--                </div>-->
                <button type="submit" class="btn btn-primary">Создать</button>
                </form>
            </div>
            <div class="card-footer text-body-secondary">

            </div>
        </div>

</@main.layout>