.class public Lcom/app/damnvulnerablebank/SplashScreen$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/damnvulnerablebank/SplashScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/app/damnvulnerablebank/SplashScreen;


# direct methods
.method public constructor <init>(Lcom/app/damnvulnerablebank/SplashScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/app/damnvulnerablebank/SplashScreen$a;->b:Lcom/app/damnvulnerablebank/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/app/damnvulnerablebank/SplashScreen$a;->b:Lcom/app/damnvulnerablebank/SplashScreen;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/app/damnvulnerablebank/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/app/damnvulnerablebank/SplashScreen$a;->b:Lcom/app/damnvulnerablebank/SplashScreen;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/app/damnvulnerablebank/SplashScreen$a;->b:Lcom/app/damnvulnerablebank/SplashScreen;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
