.class Lcom/tencent/mapapi/map/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public VL:I

.field public VM:I

.field public Vw:Z

.field public WG:Ljava/lang/String;

.field public WH:Z

.field public WI:Z

.field public WJ:Z

.field public WK:J

.field public WL:Ljava/lang/String;

.field protected WM:Z

.field public WN:Lcom/tencent/mapapi/map/ae;

.field public p:I

.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mapapi/map/bb;->WG:Ljava/lang/String;

    .line 744
    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/mapapi/map/bb;->VL:I

    .line 749
    iput v3, p0, Lcom/tencent/mapapi/map/bb;->VM:I

    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/bb;->WH:Z

    .line 759
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/bb;->Vw:Z

    .line 764
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/bb;->WI:Z

    .line 769
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/bb;->WJ:Z

    .line 775
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mapapi/map/bb;->WK:J

    .line 780
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mapapi/map/bb;->p:I

    .line 785
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mapapi/map/bb;->WL:Ljava/lang/String;

    .line 787
    iput v3, p0, Lcom/tencent/mapapi/map/bb;->r:I

    .line 789
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/bb;->WM:Z

    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/bb;->WN:Lcom/tencent/mapapi/map/ae;

    .line 714
    return-void
.end method


# virtual methods
.method final a(Lcom/tencent/mapapi/map/bb;)V
    .locals 3
    .parameter

    .prologue
    .line 717
    iget-object v0, p1, Lcom/tencent/mapapi/map/bb;->WG:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mapapi/map/bb;->WG:Ljava/lang/String;

    .line 718
    iget v0, p1, Lcom/tencent/mapapi/map/bb;->VL:I

    iput v0, p0, Lcom/tencent/mapapi/map/bb;->VL:I

    .line 719
    iget v0, p1, Lcom/tencent/mapapi/map/bb;->VM:I

    iput v0, p0, Lcom/tencent/mapapi/map/bb;->VM:I

    .line 720
    iget-boolean v0, p1, Lcom/tencent/mapapi/map/bb;->WH:Z

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/bb;->WH:Z

    .line 721
    iget-boolean v0, p1, Lcom/tencent/mapapi/map/bb;->Vw:Z

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/bb;->Vw:Z

    .line 722
    iget-boolean v0, p1, Lcom/tencent/mapapi/map/bb;->WI:Z

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/bb;->WI:Z

    .line 723
    iget-boolean v0, p1, Lcom/tencent/mapapi/map/bb;->WJ:Z

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/bb;->WJ:Z

    .line 724
    iget-wide v0, p1, Lcom/tencent/mapapi/map/bb;->WK:J

    iput-wide v0, p0, Lcom/tencent/mapapi/map/bb;->WK:J

    .line 725
    iget v0, p1, Lcom/tencent/mapapi/map/bb;->p:I

    iput v0, p0, Lcom/tencent/mapapi/map/bb;->p:I

    .line 726
    iget-object v0, p1, Lcom/tencent/mapapi/map/bb;->WL:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mapapi/map/bb;->WL:Ljava/lang/String;

    .line 727
    iget v0, p1, Lcom/tencent/mapapi/map/bb;->r:I

    iput v0, p0, Lcom/tencent/mapapi/map/bb;->r:I

    .line 728
    iget-boolean v0, p1, Lcom/tencent/mapapi/map/bb;->WM:Z

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/bb;->WM:Z

    .line 730
    iget-object v0, p1, Lcom/tencent/mapapi/map/bb;->WN:Lcom/tencent/mapapi/map/ae;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p1, Lcom/tencent/mapapi/map/bb;->WN:Lcom/tencent/mapapi/map/ae;

    iget-object v1, p1, Lcom/tencent/mapapi/map/bb;->WN:Lcom/tencent/mapapi/map/ae;

    new-instance v2, Lcom/tencent/mapapi/map/af;

    invoke-direct {v2, v0, v1}, Lcom/tencent/mapapi/map/af;-><init>(Lcom/tencent/mapapi/map/ae;Lcom/tencent/mapapi/map/ae;)V

    iput-object v2, p0, Lcom/tencent/mapapi/map/bb;->WN:Lcom/tencent/mapapi/map/ae;

    .line 734
    :cond_0
    return-void
.end method
