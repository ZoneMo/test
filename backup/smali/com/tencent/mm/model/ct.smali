.class public final Lcom/tencent/mm/model/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final cjP:I

.field public static final cjQ:I

.field public static final cjR:I

.field private static cjU:Lcom/tencent/mm/model/ct;


# instance fields
.field private cjS:J

.field private cjT:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "kv_key_start"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 27
    sput v0, Lcom/tencent/mm/model/ct;->cjP:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/mm/model/ct;->cjQ:I

    .line 28
    sget v0, Lcom/tencent/mm/model/ct;->cjP:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/tencent/mm/model/ct;->cjR:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/model/ct;->cjS:J

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    .line 34
    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    sget v1, Lcom/tencent/mm/model/ct;->cjQ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/cu;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/cu;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    sget v1, Lcom/tencent/mm/model/ct;->cjR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/df;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/df;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/dj;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/dj;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/dk;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/dk;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/dl;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/dl;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x2757

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/dm;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/dm;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x275c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/dn;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/dn;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/do;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/do;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x2780

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/dp;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/dp;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x2781

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/cv;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/cv;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x2782

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/cw;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/cw;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x2783

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/cx;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/cx;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x2800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/cy;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/cy;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x2801

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/cz;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/cz;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/da;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/da;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/db;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/db;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/dc;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/dc;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/dd;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/dd;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x276a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/de;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/de;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x27fd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/dg;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/dg;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x27fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/dh;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/dh;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    const/16 v1, 0x27ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/di;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/di;-><init>(Lcom/tencent/mm/model/ct;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private static a(Lcom/tencent/mm/model/cs;)V
    .locals 3
    .parameter

    .prologue
    .line 175
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x2017

    invoke-virtual {p0}, Lcom/tencent/mm/model/cs;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->cp([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/util/LinkedList;)V
    .locals 4
    .parameter

    .prologue
    .line 70
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v1, Lcom/tencent/mm/protocal/a/mj;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/mj;-><init>()V

    .line 72
    iput-object p0, v1, Lcom/tencent/mm/protocal/a/mj;->fAD:Ljava/util/LinkedList;

    .line 73
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_0
    iput v0, v1, Lcom/tencent/mm/protocal/a/mj;->fAC:I

    .line 76
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/storage/az;

    const/16 v3, 0x24

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/mj;->toByteArray()[B

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/tencent/mm/storage/az;-><init>(I[B)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_1
    return-void

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static e(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 49
    new-instance v1, Lcom/tencent/mm/protocal/a/mi;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/mi;-><init>()V

    .line 50
    iput p0, v1, Lcom/tencent/mm/protocal/a/mi;->fAs:I

    .line 51
    iput-object p1, v1, Lcom/tencent/mm/protocal/a/mi;->fNk:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {v0}, Lcom/tencent/mm/model/ct;->a(Ljava/util/LinkedList;)V

    .line 54
    return-void
.end method

.method public static vB()Lcom/tencent/mm/model/ct;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/tencent/mm/model/ct;->cjU:Lcom/tencent/mm/model/ct;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/tencent/mm/model/ct;

    invoke-direct {v0}, Lcom/tencent/mm/model/ct;-><init>()V

    sput-object v0, Lcom/tencent/mm/model/ct;->cjU:Lcom/tencent/mm/model/ct;

    .line 44
    :cond_0
    sget-object v0, Lcom/tencent/mm/model/ct;->cjU:Lcom/tencent/mm/model/ct;

    return-object v0
.end method

.method private static vD()Lcom/tencent/mm/model/cs;
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 156
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x2017

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->ib(Ljava/lang/String;)[B

    move-result-object v1

    .line 157
    if-eqz v1, :cond_0

    array-length v0, v1

    if-gtz v0, :cond_1

    .line 158
    :cond_0
    new-instance v0, Lcom/tencent/mm/model/cs;

    invoke-direct {v0}, Lcom/tencent/mm/model/cs;-><init>()V

    .line 167
    :goto_0
    return-object v0

    .line 162
    :cond_1
    :try_start_0
    new-instance v0, Lcom/tencent/mm/model/cs;

    invoke-direct {v0}, Lcom/tencent/mm/model/cs;-><init>()V

    .line 163
    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/cs;->p([B)Lcom/tencent/mm/model/cs;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    :cond_2
    new-instance v0, Lcom/tencent/mm/model/cs;

    invoke-direct {v0}, Lcom/tencent/mm/model/cs;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(I[Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/dq;

    .line 92
    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/ct;->vD()Lcom/tencent/mm/model/cs;

    move-result-object v2

    .line 98
    if-eqz v2, :cond_2

    iget-object v1, v2, Lcom/tencent/mm/model/cs;->cjO:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/model/cr;

    iget v4, v1, Lcom/tencent/mm/model/cr;->key:I

    if-ne v4, p1, :cond_1

    invoke-virtual {v0, v1, p2}, Lcom/tencent/mm/model/dq;->a(Lcom/tencent/mm/model/cr;[Ljava/lang/Object;)V

    .line 100
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/tencent/mm/model/ct;->a(Lcom/tencent/mm/model/cs;)V

    goto :goto_0

    .line 98
    :cond_3
    iget-object v1, v2, Lcom/tencent/mm/model/cs;->cjO:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/model/dq;->b(I[Ljava/lang/Object;)Lcom/tencent/mm/model/cr;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final vC()V
    .locals 6

    .prologue
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/model/ct;->cjS:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/model/ct;->cjS:J

    .line 133
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/ct;->vD()Lcom/tencent/mm/model/cs;

    move-result-object v3

    .line 135
    const/4 v2, 0x0

    .line 136
    iget-object v0, v3, Lcom/tencent/mm/model/cs;->cjO:Ljava/util/LinkedList;

    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/cr;

    .line 138
    iget-object v1, p0, Lcom/tencent/mm/model/ct;->cjT:Ljava/util/Map;

    iget v5, v0, Lcom/tencent/mm/model/cr;->key:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/model/dq;

    .line 139
    if-eqz v1, :cond_3

    .line 140
    invoke-virtual {v1, v0}, Lcom/tencent/mm/model/dq;->a(Lcom/tencent/mm/model/cr;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    const/4 v0, 0x1

    :goto_2
    move v2, v0

    .line 144
    goto :goto_1

    .line 146
    :cond_2
    if-eqz v2, :cond_0

    .line 147
    invoke-static {v3}, Lcom/tencent/mm/model/ct;->a(Lcom/tencent/mm/model/cs;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2
.end method
