.class public final Lcom/tencent/mm/plugin/wallet/protocal/b;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fcU:Ljava/lang/String;

.field public fcV:Ljava/lang/String;

.field public fcW:Ljava/lang/String;

.field public fcX:Ljava/lang/String;

.field public fcY:Ljava/lang/String;

.field public fcZ:Ljava/lang/String;

.field public fda:Ljava/lang/String;

.field public fdb:Ljava/lang/String;

.field public fdc:Ljava/lang/String;

.field public id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/plugin/wallet/protocal/b;I)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 105
    packed-switch p2, :pswitch_data_0

    .line 147
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 107
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->id:I

    goto :goto_0

    .line 111
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcU:Ljava/lang/String;

    goto :goto_0

    .line 115
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcV:Ljava/lang/String;

    goto :goto_0

    .line 119
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcW:Ljava/lang/String;

    goto :goto_0

    .line 123
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcX:Ljava/lang/String;

    goto :goto_0

    .line 127
    :pswitch_5
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcY:Ljava/lang/String;

    goto :goto_0

    .line 131
    :pswitch_6
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcZ:Ljava/lang/String;

    goto :goto_0

    .line 135
    :pswitch_7
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fda:Ljava/lang/String;

    goto :goto_0

    .line 139
    :pswitch_8
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdb:Ljava/lang/String;

    goto :goto_0

    .line 143
    :pswitch_9
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdc:Ljava/lang/String;

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->id:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 63
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcU:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcU:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcV:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 67
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcV:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcW:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 70
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcW:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcX:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 73
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcX:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcY:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 76
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcY:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcZ:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 79
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcZ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fda:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 82
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fda:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdb:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 85
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdb:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 87
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdc:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 88
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 90
    :cond_8
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/plugin/wallet/protocal/b;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/plugin/wallet/protocal/b;->a(La/a/a/a/a;Lcom/tencent/mm/plugin/wallet/protocal/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/plugin/wallet/protocal/b;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->id:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 31
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcU:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 32
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcU:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcV:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 35
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcV:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcW:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 38
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcW:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcX:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 41
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcX:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcY:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 44
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcY:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcZ:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 47
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcZ:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fda:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 50
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fda:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdb:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 53
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdb:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdc:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 56
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdc:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_8
    return v0
.end method
