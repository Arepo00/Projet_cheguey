.class public Landroidx/activity/ComponentActivity;
.super Lb/i/d/d;
.source ""

# interfaces
.implements Lb/n/g;
.implements Lb/n/t;
.implements Lb/s/c;
.implements Lb/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/ComponentActivity$b;
    }
.end annotation


# instance fields
.field public final c:Lb/n/h;

.field public final d:Lb/s/b;

.field public e:Lb/n/s;

.field public final f:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lb/i/d/d;-><init>()V

    new-instance v0, Lb/n/h;

    invoke-direct {v0, p0}, Lb/n/h;-><init>(Lb/n/g;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->c:Lb/n/h;

    .line 1
    new-instance v0, Lb/s/b;

    invoke-direct {v0, p0}, Lb/s/b;-><init>(Lb/s/c;)V

    .line 2
    iput-object v0, p0, Landroidx/activity/ComponentActivity;->d:Lb/s/b;

    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    new-instance v1, Landroidx/activity/ComponentActivity$a;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$a;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    .line 3
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->c:Lb/n/h;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Landroidx/activity/ComponentActivity$2;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$2;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v1}, Lb/n/d;->a(Lb/n/f;)V

    .line 5
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->c:Lb/n/h;

    .line 6
    new-instance v1, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v1}, Lb/n/d;->a(Lb/n/f;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->c:Lb/n/h;

    .line 8
    new-instance v1, Landroidx/activity/ImmLeaksCleaner;

    invoke-direct {v1, p0}, Landroidx/activity/ImmLeaksCleaner;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lb/n/d;->a(Lb/n/f;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic k(Landroidx/activity/ComponentActivity;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public a()Lb/n/d;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->c:Lb/n/h;

    return-object v0
.end method

.method public final d()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public final e()Lb/s/a;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:Lb/s/b;

    .line 1
    iget-object v0, v0, Lb/s/b;->b:Lb/s/a;

    return-object v0
.end method

.method public f()Lb/n/s;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/n/s;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/ComponentActivity$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/activity/ComponentActivity$b;->a:Lb/n/s;

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/n/s;

    :cond_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/n/s;

    if-nez v0, :cond_1

    new-instance v0, Lb/n/s;

    invoke-direct {v0}, Lb/n/s;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/n/s;

    :cond_1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/n/s;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lb/i/d/d;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:Lb/s/b;

    invoke-virtual {v0, p1}, Lb/s/b;->a(Landroid/os/Bundle;)V

    invoke-static {p0}, Lb/n/o;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/n/s;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/ComponentActivity$b;

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/activity/ComponentActivity$b;->a:Lb/n/s;

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Landroidx/activity/ComponentActivity$b;

    invoke-direct {v1}, Landroidx/activity/ComponentActivity$b;-><init>()V

    iput-object v0, v1, Landroidx/activity/ComponentActivity$b;->a:Lb/n/s;

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->c:Lb/n/h;

    .line 2
    instance-of v1, v0, Lb/n/h;

    if-eqz v1, :cond_0

    sget-object v1, Lb/n/d$b;->d:Lb/n/d$b;

    .line 3
    invoke-virtual {v0, v1}, Lb/n/h;->f(Lb/n/d$b;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lb/i/d/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:Lb/s/b;

    invoke-virtual {v0, p1}, Lb/s/b;->b(Landroid/os/Bundle;)V

    return-void
.end method
