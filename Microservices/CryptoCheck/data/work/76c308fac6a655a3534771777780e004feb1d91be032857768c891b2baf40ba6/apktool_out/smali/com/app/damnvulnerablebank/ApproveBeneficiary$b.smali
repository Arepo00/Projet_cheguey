.class public Lcom/app/damnvulnerablebank/ApproveBeneficiary$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/b/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/damnvulnerablebank/ApproveBeneficiary;->approveBeneficiary(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/app/damnvulnerablebank/ApproveBeneficiary;


# direct methods
.method public constructor <init>(Lcom/app/damnvulnerablebank/ApproveBeneficiary;)V
    .locals 0

    iput-object p1, p0, Lcom/app/damnvulnerablebank/ApproveBeneficiary$b;->a:Lcom/app/damnvulnerablebank/ApproveBeneficiary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/a/b/u;)V
    .locals 2

    iget-object p1, p0, Lcom/app/damnvulnerablebank/ApproveBeneficiary$b;->a:Lcom/app/damnvulnerablebank/ApproveBeneficiary;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Something went wrong"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
