.class public Lb/d/a$b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/d/a$b;->onAuthenticationFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/d/a$b;


# direct methods
.method public constructor <init>(Lb/d/a$b;)V
    .locals 0

    iput-object p1, p0, Lb/d/a$b$c;->b:Lb/d/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lb/d/a$b$c;->b:Lb/d/a$b;

    iget-object v0, v0, Lb/d/a$b;->a:Lb/d/a;

    iget-object v0, v0, Lb/d/a;->a0:Landroidx/biometric/BiometricPrompt$b;

    check-cast v0, Lcom/app/damnvulnerablebank/SendMoney$a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    throw v0
.end method
