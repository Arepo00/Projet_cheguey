.class public Lc/c/a/b/g0/q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/b/g0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lc/c/a/b/g0/q;


# direct methods
.method public constructor <init>(Lc/c/a/b/g0/q;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/b/g0/q$a;->b:Lc/c/a/b/g0/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lc/c/a/b/g0/q$a;->b:Lc/c/a/b/g0/q;

    iget-object p2, p1, Lc/c/a/b/g0/n;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Lc/c/a/b/g0/q;->d(Lc/c/a/b/g0/q;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
