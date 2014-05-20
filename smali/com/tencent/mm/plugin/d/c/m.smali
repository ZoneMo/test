.class public final enum Lcom/tencent/mm/plugin/d/c/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum dZN:Lcom/tencent/mm/plugin/d/c/m;

.field private static final synthetic dZR:[Lcom/tencent/mm/plugin/d/c/m;


# instance fields
.field private dZO:Landroid/util/SparseBooleanArray;

.field private dZP:Lcom/tencent/mm/plugin/d/c/c;

.field private dZQ:Lcom/tencent/mm/sdk/platformtools/bu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/tencent/mm/plugin/d/c/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tencent/mm/plugin/d/c/m;

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZR:[Lcom/tencent/mm/plugin/d/c/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZO:Landroid/util/SparseBooleanArray;

    .line 492
    return-void
.end method

.method private Zm()V
    .locals 3

    .prologue
    .line 468
    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "doRemoveSceneEndListener"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x134

    iget-object v2, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 470
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x137

    iget-object v2, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 471
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x135

    iget-object v2, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 472
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x136

    iget-object v2, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 473
    return-void
.end method

.method private Zn()V
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZQ:Lcom/tencent/mm/sdk/platformtools/bu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZQ:Lcom/tencent/mm/sdk/platformtools/bu;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/bu;->azH()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    :cond_0
    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "check worker thread is null or is dead, new one"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/bu;

    const/4 v1, 0x1

    const-string v2, "Report-Manager"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/bu;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZQ:Lcom/tencent/mm/sdk/platformtools/bu;

    .line 533
    :cond_1
    return-void
.end method

.method private d(IJ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 222
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZO:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 224
    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "operationBegin eventID = %d, beginMark=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    new-instance v0, Lcom/tencent/mm/plugin/d/a/d;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/d/a/d;-><init>()V

    .line 226
    iput p1, v0, Lcom/tencent/mm/plugin/d/a/d;->fDL:I

    .line 229
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/tencent/mm/plugin/d/a/d;->fDQ:I

    .line 230
    iget v1, v0, Lcom/tencent/mm/plugin/d/a/d;->fDQ:I

    iput v1, v0, Lcom/tencent/mm/plugin/d/a/d;->fDR:I

    .line 233
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/a/d;->aA(J)V

    .line 234
    invoke-virtual {v0}, Lcom/tencent/mm/plugin/d/a/d;->YV()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/a/d;->aB(J)V

    .line 236
    invoke-virtual {v0, p2, p3}, Lcom/tencent/mm/plugin/d/a/d;->az(J)V

    .line 237
    invoke-virtual {v0, v5}, Lcom/tencent/mm/plugin/d/a/d;->aZ(Z)V

    .line 238
    invoke-virtual {v0, v4}, Lcom/tencent/mm/plugin/d/a/d;->ba(Z)V

    .line 239
    invoke-static {v0, v4}, Lcom/tencent/mm/plugin/d/c/j;->a(Lcom/tencent/mm/plugin/d/a/e;Z)V

    .line 240
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/plugin/d/c/m;
    .locals 1
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/tencent/mm/plugin/d/c/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/d/c/m;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/plugin/d/c/m;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZR:[Lcom/tencent/mm/plugin/d/c/m;

    invoke-virtual {v0}, [Lcom/tencent/mm/plugin/d/c/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/plugin/d/c/m;

    return-object v0
.end method


# virtual methods
.method public final Zk()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "clean up"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/tencent/mm/plugin/d/c/m;->Zm()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    .line 46
    invoke-static {}, Lcom/tencent/mm/plugin/d/c/j;->Zh()V

    .line 47
    invoke-static {}, Lcom/tencent/mm/plugin/d/c/j;->Zi()V

    .line 48
    return-void
.end method

.method public final Zl()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 87
    invoke-static {v2}, Lcom/tencent/mm/plugin/d/c/i;->hx(I)V

    .line 89
    const-wide/16 v0, 0x8

    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/mm/plugin/d/c/m;->d(IJ)V

    .line 90
    return-void
.end method

.method final Zo()V
    .locals 10

    .prologue
    const v9, -0x543edcbc

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 567
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    if-nez v0, :cond_2

    .line 568
    :cond_0
    const-string v3, "MicroMsg.ReportManager"

    const-string v4, "save all : MMCore.hasSetUin() = %B, getReportRuleHelper is null = %B"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 568
    goto :goto_0

    .line 571
    :cond_2
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v3

    .line 572
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v5, 0x0

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Long;J)J

    move-result-wide v5

    .line 573
    sub-long v5, v3, v5

    const-wide/32 v7, 0x2d000

    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    .line 574
    invoke-direct {p0}, Lcom/tencent/mm/plugin/d/c/m;->Zn()V

    .line 575
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZQ:Lcom/tencent/mm/sdk/platformtools/bu;

    new-instance v5, Lcom/tencent/mm/plugin/d/c/o;

    invoke-direct {v5, v2}, Lcom/tencent/mm/plugin/d/c/o;-><init>(B)V

    invoke-virtual {v0, v5}, Lcom/tencent/mm/sdk/platformtools/bu;->c(Lcom/tencent/mm/sdk/platformtools/bw;)I

    .line 576
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 577
    const-string v0, "MicroMsg.ReportManager"

    const-string v5, "ask for save all ok, time = %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v5, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 580
    :cond_3
    const-string v0, "MicroMsg.ReportManager"

    const-string v5, "ask for save all fail, time = %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v5, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method final Zp()V
    .locals 12

    .prologue
    const-wide/32 v10, 0xdbba00

    const v9, -0x543edcbb

    .line 585
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    const-string v0, "MicroMsg.GetReportRuleHelper"

    const-string v1, "doGetReportRule"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.GetReportRuleHelper"

    const-string v1, "doGetReportRule error, has not set uin"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Long;)J

    move-result-wide v3

    const-string v0, "MicroMsg.GetReportRuleHelper"

    const-string v5, "now = %d, lastTimestamp = %d, cycle = %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-long v3, v1, v3

    cmp-long v0, v3, v10

    if-lez v0, :cond_2

    const-string v0, "MicroMsg.GetReportRuleHelper"

    const-string v3, "time out do get report rule"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/mm/plugin/d/b/e;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/d/b/e;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_0

    :cond_2
    const-string v0, "MicroMsg.GetReportRuleHelper"

    const-string v1, "min time limit, do not do get report rule"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 328
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    if-nez v0, :cond_0

    .line 329
    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "getReportRuleHelper is null, ignore this report, kvStat logID=%d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/plugin/d/c/c;->hu(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "kvstat report is close, ignore this report, kvStat logID=%d, val=%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 336
    :cond_1
    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "kvStat logID=%d, val=%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    new-instance v0, Lcom/tencent/mm/plugin/d/a/f;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/d/a/f;-><init>()V

    .line 338
    invoke-virtual {v0}, Lcom/tencent/mm/plugin/d/a/f;->YW()V

    .line 339
    iput p2, v0, Lcom/tencent/mm/plugin/d/a/f;->fNl:I

    .line 340
    iput-object p3, v0, Lcom/tencent/mm/plugin/d/a/f;->fNk:Ljava/lang/String;

    .line 341
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/tencent/mm/plugin/d/a/f;->fDQ:I

    .line 342
    iget v1, v0, Lcom/tencent/mm/plugin/d/a/f;->fDQ:I

    iput v1, v0, Lcom/tencent/mm/plugin/d/a/f;->fDR:I

    .line 343
    invoke-static {v0, p1}, Lcom/tencent/mm/plugin/d/c/j;->a(Lcom/tencent/mm/plugin/d/a/e;Z)V

    goto :goto_0
.end method

.method final ar(II)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 543
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/plugin/d/c/c;->hu(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 544
    :cond_0
    const-string v1, "MicroMsg.ReportManager"

    const-string v2, "report : getReportRuleHelper is null = %B, if not null, it will be close, type = %d"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    :goto_1
    return-void

    .line 544
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 547
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_3

    .line 548
    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "report : MMCore.hasSetUin() = %B"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 551
    :cond_3
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v1

    .line 552
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Long;J)J

    move-result-wide v3

    .line 553
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/plugin/d/c/c;->hv(I)J

    move-result-wide v5

    .line 554
    const-string v0, "MicroMsg.ReportManager"

    const-string v7, "check report : logType = %d, now = %d, lastTimestamp = %d, cycle = %d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v0, v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    sub-long v3, v1, v3

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    .line 556
    invoke-direct {p0}, Lcom/tencent/mm/plugin/d/c/m;->Zn()V

    .line 557
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZQ:Lcom/tencent/mm/sdk/platformtools/bu;

    new-instance v3, Lcom/tencent/mm/plugin/d/c/n;

    invoke-direct {v3, p1}, Lcom/tencent/mm/plugin/d/c/n;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/sdk/platformtools/bu;->c(Lcom/tencent/mm/sdk/platformtools/bw;)I

    .line 558
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 559
    const-string v0, "MicroMsg.ReportManager"

    const-string v3, "ask for report ok, time = %d, logType = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 562
    :cond_4
    const-string v0, "MicroMsg.ReportManager"

    const-string v3, "ask for report fail, time = %d, logType = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public final b(ILjava/util/List;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    if-nez v0, :cond_0

    .line 373
    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "getReportRuleHelper is null, ignore this report, kvStat logID=%d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    invoke-virtual {v0, v7}, Lcom/tencent/mm/plugin/d/c/c;->hu(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "kvstat report is close, ignore this report, kvStat logID=%d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 380
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    :cond_2
    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "kvStat vals is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_3
    new-instance v3, Lcom/tencent/mm/plugin/d/a/f;

    invoke-direct {v3}, Lcom/tencent/mm/plugin/d/a/f;-><init>()V

    .line 385
    invoke-virtual {v3}, Lcom/tencent/mm/plugin/d/a/f;->YW()V

    .line 386
    iput p1, v3, Lcom/tencent/mm/plugin/d/a/f;->fNl:I

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    move v1, v2

    .line 391
    :goto_1
    if-ge v1, v5, :cond_4

    .line 392
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 394
    :cond_4
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/mm/plugin/d/a/f;->fNk:Ljava/lang/String;

    .line 396
    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "kvStat logID=%d, frep = %d, vals.size=%d, val = %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v3, Lcom/tencent/mm/plugin/d/a/f;->fNk:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v3, Lcom/tencent/mm/plugin/d/a/f;->fDQ:I

    .line 399
    iget v0, v3, Lcom/tencent/mm/plugin/d/a/f;->fDQ:I

    iput v0, v3, Lcom/tencent/mm/plugin/d/a/f;->fDR:I

    .line 400
    invoke-static {v3, v2}, Lcom/tencent/mm/plugin/d/c/j;->a(Lcom/tencent/mm/plugin/d/a/e;Z)V

    goto/16 :goto_0
.end method

.method public final varargs d(I[Ljava/lang/Object;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 357
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.ReportManager"

    const-string v2, "getReportRuleHelper is null, ignore this report, kvStat logID=%d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    invoke-virtual {v0, v7}, Lcom/tencent/mm/plugin/d/c/c;->hu(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.ReportManager"

    const-string v2, "kvstat report is close, ignore this report, kvStat logID=%d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    if-gtz v0, :cond_3

    :cond_2
    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "kvStat vals is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/tencent/mm/plugin/d/a/f;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/d/a/f;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/d/a/f;->YW()V

    iput p1, v2, Lcom/tencent/mm/plugin/d/a/f;->fNl:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p2

    add-int/lit8 v4, v0, -0x1

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, p2, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    aget-object v0, p2, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/plugin/d/a/f;->fNk:Ljava/lang/String;

    const-string v0, "MicroMsg.ReportManager"

    const-string v3, "kvStat logID=%d, frep = %d, vals.size=%d, val = %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    array-length v6, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v2, Lcom/tencent/mm/plugin/d/a/f;->fNk:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v3

    long-to-int v0, v3

    iput v0, v2, Lcom/tencent/mm/plugin/d/a/f;->fDQ:I

    iget v0, v2, Lcom/tencent/mm/plugin/d/a/f;->fDQ:I

    iput v0, v2, Lcom/tencent/mm/plugin/d/a/f;->fDR:I

    invoke-static {v2, v1}, Lcom/tencent/mm/plugin/d/c/j;->a(Lcom/tencent/mm/plugin/d/a/e;Z)V

    goto/16 :goto_0
.end method

.method public final hB(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 158
    invoke-static {p1}, Lcom/tencent/mm/plugin/d/c/i;->hz(I)V

    .line 160
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/plugin/d/c/c;->hu(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    int-to-long v0, p1

    iget-object v2, p0, Lcom/tencent/mm/plugin/d/c/m;->dZO:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const-string v2, "MicroMsg.ReportManager"

    const-string v3, "stop operation timer eventID = %d, beginMark=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/tencent/mm/plugin/d/a/d;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/d/a/d;-><init>()V

    iput p1, v2, Lcom/tencent/mm/plugin/d/a/d;->fDL:I

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/plugin/d/a/d;->az(J)V

    invoke-virtual {v2, v6}, Lcom/tencent/mm/plugin/d/a/d;->aZ(Z)V

    invoke-virtual {v2, v7}, Lcom/tencent/mm/plugin/d/a/d;->ba(Z)V

    invoke-static {v2, v6}, Lcom/tencent/mm/plugin/d/c/j;->a(Lcom/tencent/mm/plugin/d/a/e;Z)V

    goto :goto_0
.end method

.method public final hx(I)V
    .locals 2
    .parameter

    .prologue
    .line 99
    invoke-static {p1}, Lcom/tencent/mm/plugin/d/c/i;->hx(I)V

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/d/c/c;->hu(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    int-to-long v0, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/mm/plugin/d/c/m;->d(IJ)V

    goto :goto_0
.end method

.method public final hy(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 133
    invoke-static {p1}, Lcom/tencent/mm/plugin/d/c/i;->hy(I)V

    .line 134
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/plugin/d/c/c;->hu(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    int-to-long v0, p1

    iget-object v2, p0, Lcom/tencent/mm/plugin/d/c/m;->dZO:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "operationEnd eventID = %d, not begin yet"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/plugin/d/c/m;->dZO:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const-string v2, "MicroMsg.ReportManager"

    const-string v3, "operationEnd eventID = %d, beginMark=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/tencent/mm/plugin/d/a/d;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/d/a/d;-><init>()V

    iput p1, v2, Lcom/tencent/mm/plugin/d/a/d;->fDL:I

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v2, Lcom/tencent/mm/plugin/d/a/d;->fDQ:I

    iget v3, v2, Lcom/tencent/mm/plugin/d/a/d;->fDQ:I

    iput v3, v2, Lcom/tencent/mm/plugin/d/a/d;->fDR:I

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/plugin/d/a/d;->aA(J)V

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/d/a/d;->YV()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/plugin/d/a/d;->aB(J)V

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/plugin/d/a/d;->az(J)V

    invoke-virtual {v2, v6}, Lcom/tencent/mm/plugin/d/a/d;->aZ(Z)V

    invoke-virtual {v2, v6}, Lcom/tencent/mm/plugin/d/a/d;->ba(Z)V

    invoke-static {v2, v6}, Lcom/tencent/mm/plugin/d/c/j;->a(Lcom/tencent/mm/plugin/d/a/e;Z)V

    goto :goto_0
.end method

.method public final init()V
    .locals 3

    .prologue
    .line 35
    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "init begin"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/tencent/mm/plugin/d/c/c;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/d/c/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    .line 37
    invoke-direct {p0}, Lcom/tencent/mm/plugin/d/c/m;->Zm()V

    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "doAddSceneEndListener"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x134

    iget-object v2, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x137

    iget-object v2, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x135

    iget-object v2, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x136

    iget-object v2, p0, Lcom/tencent/mm/plugin/d/c/m;->dZP:Lcom/tencent/mm/plugin/d/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 38
    const-string v0, "MicroMsg.ReportManager"

    const-string v1, "init end"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public final j(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/mm/plugin/d/c/m;->a(ZILjava/lang/String;)V

    .line 318
    return-void
.end method
