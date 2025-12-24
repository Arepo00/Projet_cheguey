.class public Lb/l/a/e$a;
.super Lb/l/a/i;
.source ""

# interfaces
.implements Lb/n/t;
.implements Lb/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/l/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/l/a/i<",
        "Lb/l/a/e;",
        ">;",
        "Lb/n/t;",
        "Lb/a/c;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lb/l/a/e;


# direct methods
.method public constructor <init>(Lb/l/a/e;)V
    .locals 0

    iput-object p1, p0, Lb/l/a/e$a;->g:Lb/l/a/e;

    invoke-direct {p0, p1}, Lb/l/a/i;-><init>(Lb/l/a/e;)V

    return-void
.end method


# virtual methods
.method public a()Lb/n/d;
    .locals 1

    iget-object v0, p0, Lb/l/a/e$a;->g:Lb/l/a/e;

    iget-object v0, v0, Lb/l/a/e;->h:Lb/n/h;

    return-object v0
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lb/l/a/e$a;->g:Lb/l/a/e;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lb/l/a/e$a;->g:Lb/l/a/e;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    iget-object v0, p0, Lb/l/a/e$a;->g:Lb/l/a/e;

    .line 1
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public f()Lb/n/s;
    .locals 1

    iget-object v0, p0, Lb/l/a/e$a;->g:Lb/l/a/e;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->f()Lb/n/s;

    move-result-object v0

    return-object v0
.end method
