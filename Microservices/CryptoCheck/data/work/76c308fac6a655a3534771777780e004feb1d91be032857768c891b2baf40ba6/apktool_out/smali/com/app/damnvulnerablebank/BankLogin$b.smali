.class public Lcom/app/damnvulnerablebank/BankLogin$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/b/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/damnvulnerablebank/BankLogin;->bankLogin(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/app/damnvulnerablebank/BankLogin;


# direct methods
.method public constructor <init>(Lcom/app/damnvulnerablebank/BankLogin;)V
    .locals 0

    iput-object p1, p0, Lcom/app/damnvulnerablebank/BankLogin$b;->a:Lcom/app/damnvulnerablebank/BankLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/a/b/u;)V
    .locals 3

    iget-object p1, p0, Lcom/app/damnvulnerablebank/BankLogin$b;->a:Lcom/app/damnvulnerablebank/BankLogin;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Something went wrong"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/app/damnvulnerablebank/BankLogin$b;->a:Lcom/app/damnvulnerablebank/BankLogin;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/app/damnvulnerablebank/BankLogin$b;->a:Lcom/app/damnvulnerablebank/BankLogin;

    const-class v2, Lcom/app/damnvulnerablebank/BankLogin;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
