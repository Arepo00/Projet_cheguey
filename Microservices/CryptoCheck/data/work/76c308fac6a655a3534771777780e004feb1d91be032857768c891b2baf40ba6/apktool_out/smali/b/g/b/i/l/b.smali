.class public Lb/g/b/i/l/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/b/i/l/b$a;,
        Lb/g/b/i/l/b$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/g/b/i/d;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lb/g/b/i/l/b$a;

.field public c:Lb/g/b/i/e;


# direct methods
.method public constructor <init>(Lb/g/b/i/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/g/b/i/l/b;->a:Ljava/util/ArrayList;

    new-instance v0, Lb/g/b/i/l/b$a;

    invoke-direct {v0}, Lb/g/b/i/l/b$a;-><init>()V

    iput-object v0, p0, Lb/g/b/i/l/b;->b:Lb/g/b/i/l/b$a;

    iput-object p1, p0, Lb/g/b/i/l/b;->c:Lb/g/b/i/e;

    return-void
.end method


# virtual methods
.method public final a(Lb/g/b/i/l/b$b;Lb/g/b/i/d;Z)Z
    .locals 5

    sget-object v0, Lb/g/b/i/d$a;->b:Lb/g/b/i/d$a;

    sget-object v1, Lb/g/b/i/d$a;->d:Lb/g/b/i/d$a;

    iget-object v2, p0, Lb/g/b/i/l/b;->b:Lb/g/b/i/l/b$a;

    invoke-virtual {p2}, Lb/g/b/i/d;->j()Lb/g/b/i/d$a;

    move-result-object v3

    iput-object v3, v2, Lb/g/b/i/l/b$a;->a:Lb/g/b/i/d$a;

    iget-object v2, p0, Lb/g/b/i/l/b;->b:Lb/g/b/i/l/b$a;

    invoke-virtual {p2}, Lb/g/b/i/d;->n()Lb/g/b/i/d$a;

    move-result-object v3

    iput-object v3, v2, Lb/g/b/i/l/b$a;->b:Lb/g/b/i/d$a;

    iget-object v2, p0, Lb/g/b/i/l/b;->b:Lb/g/b/i/l/b$a;

    invoke-virtual {p2}, Lb/g/b/i/d;->o()I

    move-result v3

    iput v3, v2, Lb/g/b/i/l/b$a;->c:I

    iget-object v2, p0, Lb/g/b/i/l/b;->b:Lb/g/b/i/l/b$a;

    invoke-virtual {p2}, Lb/g/b/i/d;->i()I

    move-result v3

    iput v3, v2, Lb/g/b/i/l/b$a;->d:I

    iget-object v2, p0, Lb/g/b/i/l/b;->b:Lb/g/b/i/l/b$a;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lb/g/b/i/l/b$a;->i:Z

    iput-boolean p3, v2, Lb/g/b/i/l/b$a;->j:Z

    iget-object p3, v2, Lb/g/b/i/l/b$a;->a:Lb/g/b/i/d$a;

    const/4 v2, 0x1

    if-ne p3, v1, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object v4, p0, Lb/g/b/i/l/b;->b:Lb/g/b/i/l/b$a;

    iget-object v4, v4, Lb/g/b/i/l/b$a;->b:Lb/g/b/i/d$a;

    if-ne v4, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x0

    if-eqz p3, :cond_2

    iget p3, p2, Lb/g/b/i/d;->N:F

    cmpl-float p3, p3, v4

    if-lez p3, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget v1, p2, Lb/g/b/i/d;->N:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    const/4 v4, 0x4

    if-eqz p3, :cond_4

    iget-object p3, p2, Lb/g/b/i/d;->l:[I

    aget p3, p3, v3

    if-ne p3, v4, :cond_4

    iget-object p3, p0, Lb/g/b/i/l/b;->b:Lb/g/b/i/l/b$a;

    iput-object v0, p3, Lb/g/b/i/l/b$a;->a:Lb/g/b/i/d$a;

    :cond_4
    if-eqz v1, :cond_5

    iget-object p3, p2, Lb/g/b/i/d;->l:[I

    aget p3, p3, v2

    if-ne p3, v4, :cond_5

    iget-object p3, p0, Lb/g/b/i/l/b;->b:Lb/g/b/i/l/b$a;

    iput-object v0, p3, Lb/g/b/i/l/b$a;->b:Lb/g/b/i/d$a;

    :cond_5
    iget-object p3, p0, Lb/g/b/i/l/b;->b:Lb/g/b/i/l/b$a;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a(Lb/g/b/i/d;Lb/g/b/i/l/b$a;)V

    iget-object p1, p0, Lb/g/b/i/l/b;->b:Lb/g/b/i/l/b$a;

    iget p1, p1, Lb/g/b/i/l/b$a;->e:I

    invoke-virtual {p2, p1}, Lb/g/b/i/d;->B(I)V

    iget-object p1, p0, Lb/g/b/i/l/b;->b:Lb/g/b/i/l/b$a;

    iget p1, p1, Lb/g/b/i/l/b$a;->f:I

    invoke-virtual {p2, p1}, Lb/g/b/i/d;->w(I)V

    iget-object p1, p0, Lb/g/b/i/l/b;->b:Lb/g/b/i/l/b$a;

    iget-boolean p3, p1, Lb/g/b/i/l/b$a;->h:Z

    .line 1
    iput-boolean p3, p2, Lb/g/b/i/d;->w:Z

    .line 2
    iget p1, p1, Lb/g/b/i/l/b$a;->g:I

    .line 3
    iput p1, p2, Lb/g/b/i/d;->R:I

    if-lez p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p2, Lb/g/b/i/d;->w:Z

    .line 4
    iget-object p1, p0, Lb/g/b/i/l/b;->b:Lb/g/b/i/l/b$a;

    iput-boolean v3, p1, Lb/g/b/i/l/b$a;->j:Z

    iget-boolean p1, p1, Lb/g/b/i/l/b$a;->i:Z

    return p1
.end method

.method public final b(Lb/g/b/i/e;II)V
    .locals 3

    .line 1
    iget v0, p1, Lb/g/b/i/d;->S:I

    .line 2
    iget v1, p1, Lb/g/b/i/d;->T:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v2}, Lb/g/b/i/d;->z(I)V

    invoke-virtual {p1, v2}, Lb/g/b/i/d;->y(I)V

    .line 4
    iput p2, p1, Lb/g/b/i/d;->L:I

    iget v2, p1, Lb/g/b/i/d;->S:I

    if-ge p2, v2, :cond_0

    iput v2, p1, Lb/g/b/i/d;->L:I

    .line 5
    :cond_0
    iput p3, p1, Lb/g/b/i/d;->M:I

    iget p2, p1, Lb/g/b/i/d;->T:I

    if-ge p3, p2, :cond_1

    iput p2, p1, Lb/g/b/i/d;->M:I

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Lb/g/b/i/d;->z(I)V

    invoke-virtual {p1, v1}, Lb/g/b/i/d;->y(I)V

    iget-object p1, p0, Lb/g/b/i/l/b;->c:Lb/g/b/i/e;

    invoke-virtual {p1}, Lb/g/b/i/e;->E()V

    return-void
.end method
