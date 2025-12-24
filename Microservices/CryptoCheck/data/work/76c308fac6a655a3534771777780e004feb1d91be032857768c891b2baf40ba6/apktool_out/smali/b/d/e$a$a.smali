.class public Lb/d/e$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/d/e$a;->a(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/CharSequence;

.field public final synthetic d:Lb/d/e$a;


# direct methods
.method public constructor <init>(Lb/d/e$a;ILjava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lb/d/e$a$a;->d:Lb/d/e$a;

    iput p2, p0, Lb/d/e$a$a;->b:I

    iput-object p3, p0, Lb/d/e$a$a;->c:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lb/d/e$a$a;->d:Lb/d/e$a;

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
