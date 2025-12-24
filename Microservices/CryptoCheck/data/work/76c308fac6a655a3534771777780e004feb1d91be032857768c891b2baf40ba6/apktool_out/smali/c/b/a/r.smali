.class public Lc/b/a/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/b/q$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/b/q$b<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/app/damnvulnerablebank/ViewBeneficiary;


# direct methods
.method public constructor <init>(Lcom/app/damnvulnerablebank/ViewBeneficiary;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/r;->a:Lcom/app/damnvulnerablebank/ViewBeneficiary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "enc_data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/b/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "code"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xc8

    const-string v3, "data"

    if-eq p1, v2, :cond_0

    :try_start_1
    iget-object p1, p0, Lc/b/a/r;->a:Lcom/app/damnvulnerablebank/ViewBeneficiary;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "message"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lc/b/a/c;

    invoke-direct {v3}, Lc/b/a/c;-><init>()V

    const-string v4, "beneficiary_account_number"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc/b/a/c;->a(Ljava/lang/String;)V

    const-string v4, "approved"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\nAccount Approved By Admin\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lc/b/a/c;->b:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lc/b/a/r;->a:Lcom/app/damnvulnerablebank/ViewBeneficiary;

    iget-object v2, v2, Lcom/app/damnvulnerablebank/ViewBeneficiary;->q:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    iget-object p1, p0, Lc/b/a/r;->a:Lcom/app/damnvulnerablebank/ViewBeneficiary;

    iget-object v1, p1, Lcom/app/damnvulnerablebank/ViewBeneficiary;->p:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object p1, p0, Lc/b/a/r;->a:Lcom/app/damnvulnerablebank/ViewBeneficiary;

    new-instance v1, Lc/b/a/b;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lc/b/a/r;->a:Lcom/app/damnvulnerablebank/ViewBeneficiary;

    iget-object v3, v3, Lcom/app/damnvulnerablebank/ViewBeneficiary;->q:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lc/b/a/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p1, Lcom/app/damnvulnerablebank/ViewBeneficiary;->r:Lc/b/a/b;

    iget-object p1, p0, Lc/b/a/r;->a:Lcom/app/damnvulnerablebank/ViewBeneficiary;

    iget-object v1, p1, Lcom/app/damnvulnerablebank/ViewBeneficiary;->p:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/app/damnvulnerablebank/ViewBeneficiary;->r:Lc/b/a/b;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object p1, p0, Lc/b/a/r;->a:Lcom/app/damnvulnerablebank/ViewBeneficiary;

    iget-object p1, p1, Lcom/app/damnvulnerablebank/ViewBeneficiary;->r:Lc/b/a/b;

    invoke-virtual {p1}, Lc/b/a/b;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x8

    if-nez p1, :cond_2

    iget-object p1, p0, Lc/b/a/r;->a:Lcom/app/damnvulnerablebank/ViewBeneficiary;

    iget-object p1, p1, Lcom/app/damnvulnerablebank/ViewBeneficiary;->p:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lc/b/a/r;->a:Lcom/app/damnvulnerablebank/ViewBeneficiary;

    .line 4
    iget-object p1, p1, Lcom/app/damnvulnerablebank/ViewBeneficiary;->s:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lc/b/a/r;->a:Lcom/app/damnvulnerablebank/ViewBeneficiary;

    iget-object p1, p1, Lcom/app/damnvulnerablebank/ViewBeneficiary;->p:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lc/b/a/r;->a:Lcom/app/damnvulnerablebank/ViewBeneficiary;

    .line 6
    iget-object p1, p1, Lcom/app/damnvulnerablebank/ViewBeneficiary;->s:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lc/b/a/r;->a:Lcom/app/damnvulnerablebank/ViewBeneficiary;

    iget-object v0, p1, Lcom/app/damnvulnerablebank/ViewBeneficiary;->r:Lc/b/a/b;

    .line 8
    iput-object p1, v0, Lc/b/a/b;->e:Lc/b/a/b$a;

    :goto_2
    return-void
.end method
