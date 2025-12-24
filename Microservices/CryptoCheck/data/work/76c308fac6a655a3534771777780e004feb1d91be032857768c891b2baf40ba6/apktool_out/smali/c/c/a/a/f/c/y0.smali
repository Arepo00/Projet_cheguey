.class public final Lc/c/a/a/f/c/y0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lc/c/a/a/f/c/z0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lc/c/a/a/c/l/q;->b0(Landroid/os/Parcel;)I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v15, v2

    move-wide/from16 v17, v15

    move-object v7, v5

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v20

    const/4 v9, 0x0

    const/16 v19, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    packed-switch v3, :pswitch_data_0

    .line 2
    invoke-static {v0, v2}, Lc/c/a/a/c/l/q;->Z(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    sget-object v3, Lc/c/a/a/f/c/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lc/c/a/a/c/l/q;->r(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v21

    goto :goto_0

    :pswitch_1
    sget-object v3, Lc/c/b/h/g0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lc/c/a/a/c/l/q;->n(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lc/c/b/h/g0;

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v2}, Lc/c/a/a/c/l/q;->O(Landroid/os/Parcel;I)Z

    move-result v19

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v2}, Lc/c/a/a/c/l/q;->R(Landroid/os/Parcel;I)J

    move-result-wide v17

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v2}, Lc/c/a/a/c/l/q;->R(Landroid/os/Parcel;I)J

    move-result-wide v15

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v2}, Lc/c/a/a/c/l/q;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v2}, Lc/c/a/a/c/l/q;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :pswitch_7
    sget-object v3, Lc/c/a/a/f/c/f1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lc/c/a/a/c/l/q;->n(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lc/c/a/a/f/c/f1;

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v2}, Lc/c/a/a/c/l/q;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :pswitch_9
    invoke-static {v0, v2}, Lc/c/a/a/c/l/q;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :pswitch_a
    invoke-static {v0, v2}, Lc/c/a/a/c/l/q;->O(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_0

    :pswitch_b
    invoke-static {v0, v2}, Lc/c/a/a/c/l/q;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :pswitch_c
    invoke-static {v0, v2}, Lc/c/a/a/c/l/q;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lc/c/a/a/c/l/q;->v(Landroid/os/Parcel;I)V

    new-instance v0, Lc/c/a/a/f/c/z0;

    move-object v6, v0

    invoke-direct/range {v6 .. v21}, Lc/c/a/a/f/c/z0;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lc/c/a/a/f/c/f1;Ljava/lang/String;Ljava/lang/String;JJZLc/c/b/h/g0;Ljava/util/List;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lc/c/a/a/f/c/z0;

    return-object p1
.end method
