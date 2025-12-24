.class public Lb/d/a$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/d/a$b;->onAuthenticationError(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/CharSequence;

.field public final synthetic c:I

.field public final synthetic d:Lb/d/a$b;


# direct methods
.method public constructor <init>(Lb/d/a$b;Ljava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Lb/d/a$b$a;->d:Lb/d/a$b;

    iput-object p2, p0, Lb/d/a$b$a;->b:Ljava/lang/CharSequence;

    iput p3, p0, Lb/d/a$b$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/d/a$b$a;->b:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/d/a$b$a;->d:Lb/d/a$b;

    iget-object v0, v0, Lb/d/a$b;->a:Lb/d/a;

    .line 1
    iget-object v0, v0, Lb/d/a;->W:Landroid/content/Context;

    .line 2
    sget v1, Lb/d/n;->default_error_msg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lb/d/a$b$a;->d:Lb/d/a$b;

    iget-object v0, v0, Lb/d/a$b;->a:Lb/d/a;

    iget-object v0, v0, Lb/d/a;->a0:Landroidx/biometric/BiometricPrompt$b;

    check-cast v0, Lcom/app/damnvulnerablebank/SendMoney$a;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
