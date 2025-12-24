.class public Lb/d/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/biometric/BiometricPrompt$c;

.field public final synthetic c:Lb/d/e$a;


# direct methods
.method public constructor <init>(Lb/d/e$a;Landroidx/biometric/BiometricPrompt$c;)V
    .locals 0

    iput-object p1, p0, Lb/d/g;->c:Lb/d/e$a;

    iput-object p2, p0, Lb/d/g;->b:Landroidx/biometric/BiometricPrompt$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/d/g;->c:Lb/d/e$a;

    iget-object v0, v0, Lb/d/e$a;->a:Lb/d/e;

    iget-object v0, v0, Lb/d/e;->Y:Landroidx/biometric/BiometricPrompt$b;

    iget-object v1, p0, Lb/d/g;->b:Landroidx/biometric/BiometricPrompt$c;

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$b;->a(Landroidx/biometric/BiometricPrompt$c;)V

    return-void
.end method
