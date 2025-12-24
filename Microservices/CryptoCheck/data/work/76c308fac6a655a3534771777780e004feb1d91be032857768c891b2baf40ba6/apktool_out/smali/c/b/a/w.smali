.class public Lc/b/a/w;
.super Lc/a/b/w/g;
.source ""


# instance fields
.field public final synthetic u:Lcom/app/damnvulnerablebank/ViewBeneficiaryAdmin;


# direct methods
.method public constructor <init>(Lcom/app/damnvulnerablebank/ViewBeneficiaryAdmin;ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/q$b;Lc/a/b/q$a;)V
    .locals 6

    iput-object p1, p0, Lc/b/a/w;->u:Lcom/app/damnvulnerablebank/ViewBeneficiaryAdmin;

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lc/a/b/w/g;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/q$b;Lc/a/b/q$a;)V

    return-void
.end method


# virtual methods
.method public g()Ljava/util/Map;
    .locals 4

    iget-object v0, p0, Lc/b/a/w;->u:Lcom/app/damnvulnerablebank/ViewBeneficiaryAdmin;

    const-string v1, "jwt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "accesstoken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Authorization"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
