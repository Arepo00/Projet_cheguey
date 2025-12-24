.class public Lb/d/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static j:Lb/d/b;


# instance fields
.field public a:I

.field public b:Lb/d/a;

.field public c:Lb/d/c;

.field public d:Lb/d/e;

.field public e:Ljava/util/concurrent/Executor;

.field public f:Landroidx/biometric/BiometricPrompt$b;

.field public g:Z

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/d/b;->h:I

    iput v0, p0, Lb/d/b;->i:I

    return-void
.end method

.method public static a()Lb/d/b;
    .locals 1

    sget-object v0, Lb/d/b;->j:Lb/d/b;

    if-nez v0, :cond_0

    new-instance v0, Lb/d/b;

    invoke-direct {v0}, Lb/d/b;-><init>()V

    sput-object v0, Lb/d/b;->j:Lb/d/b;

    :cond_0
    sget-object v0, Lb/d/b;->j:Lb/d/b;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 3

    iget v0, p0, Lb/d/b;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1
    iput v2, p0, Lb/d/b;->i:I

    return-void

    .line 2
    :cond_1
    iput v2, p0, Lb/d/b;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/d/b;->b:Lb/d/a;

    iput-object v0, p0, Lb/d/b;->c:Lb/d/c;

    iput-object v0, p0, Lb/d/b;->d:Lb/d/e;

    iput-object v0, p0, Lb/d/b;->e:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lb/d/b;->f:Landroidx/biometric/BiometricPrompt$b;

    iput v2, p0, Lb/d/b;->h:I

    iput-boolean v2, p0, Lb/d/b;->g:Z

    sput-object v0, Lb/d/b;->j:Lb/d/b;

    return-void
.end method
