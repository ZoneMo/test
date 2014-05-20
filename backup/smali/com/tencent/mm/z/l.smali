.class public final Lcom/tencent/mm/z/l;
.super Lcom/tencent/mm/n/v;
.source "SourceFile"


# instance fields
.field private final cvi:Lcom/tencent/mm/protocal/ar;

.field private final cvj:Lcom/tencent/mm/protocal/as;

.field private final cvk:Z


# direct methods
.method public constructor <init>(Lcom/tencent/mm/protocal/as;)V
    .locals 1
    .parameter

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/tencent/mm/n/v;-><init>()V

    .line 634
    new-instance v0, Lcom/tencent/mm/protocal/ar;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/ar;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/z/l;->cvi:Lcom/tencent/mm/protocal/ar;

    .line 635
    iput-object p1, p0, Lcom/tencent/mm/z/l;->cvj:Lcom/tencent/mm/protocal/as;

    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/z/l;->cvk:Z

    .line 637
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/tencent/mm/n/v;-><init>()V

    .line 628
    new-instance v0, Lcom/tencent/mm/protocal/ar;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/ar;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/z/l;->cvi:Lcom/tencent/mm/protocal/ar;

    .line 629
    new-instance v0, Lcom/tencent/mm/protocal/as;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/as;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/z/l;->cvj:Lcom/tencent/mm/protocal/as;

    .line 630
    iput-boolean p1, p0, Lcom/tencent/mm/z/l;->cvk:Z

    .line 631
    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 651
    const/16 v0, 0x26

    return v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    const-string v0, "/cgi-bin/micromsg-bin/newsync"

    return-object v0
.end method

.method public final wu()Lcom/tencent/mm/protocal/p;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/tencent/mm/z/l;->cvi:Lcom/tencent/mm/protocal/ar;

    return-object v0
.end method

.method public final wv()Lcom/tencent/mm/protocal/q;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/tencent/mm/z/l;->cvj:Lcom/tencent/mm/protocal/as;

    return-object v0
.end method
