.class public Lcom/app/damnvulnerablebank/ApproveBeneficiary$c;
.super Lc/a/b/w/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/damnvulnerablebank/ApproveBeneficiary;->approveBeneficiary(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/app/damnvulnerablebank/ApproveBeneficiary;ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/q$b;Lc/a/b/q$a;Ljava/lang/String;)V
    .locals 6

    iput-object p7, p0, Lcom/app/damnvulnerablebank/ApproveBeneficiary$c;->u:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lc/a/b/w/g;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/q$b;Lc/a/b/q$a;)V

    return-void
.end method


# virtual methods
.method public g()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Bearer "

    invoke-static {v1}, Lc/a/a/a/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/app/damnvulnerablebank/ApproveBeneficiary$c;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
