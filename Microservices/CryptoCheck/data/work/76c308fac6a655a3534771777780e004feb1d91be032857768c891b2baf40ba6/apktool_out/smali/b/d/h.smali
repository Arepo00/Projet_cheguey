.class public Lb/d/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lb/d/e$a;


# direct methods
.method public constructor <init>(Lb/d/e$a;)V
    .locals 0

    iput-object p1, p0, Lb/d/h;->b:Lb/d/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lb/d/h;->b:Lb/d/e$a;

    iget-object v0, v0, Lb/d/e$a;->a:Lb/d/e;

    iget-object v0, v0, Lb/d/e;->Y:Landroidx/biometric/BiometricPrompt$b;

    check-cast v0, Lcom/app/damnvulnerablebank/SendMoney$a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    throw v0
.end method
