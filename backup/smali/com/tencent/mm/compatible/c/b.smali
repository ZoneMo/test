.class public final Lcom/tencent/mm/compatible/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cdA:I

.field public cdB:I

.field public cdC:I

.field public cdD:I

.field public cdE:Z

.field public cdF:I

.field public cdG:I

.field public cdH:I

.field public cdn:Z

.field public cdo:I

.field public cdp:Z

.field public cdq:I

.field public cdr:Z

.field public cds:I

.field public cdt:Z

.field public cdu:Lcom/tencent/mm/compatible/c/c;

.field public cdv:Z

.field public cdw:Lcom/tencent/mm/compatible/c/c;

.field public cdx:Z

.field public cdy:I

.field public cdz:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/tencent/mm/compatible/c/c;

    invoke-direct {v0, p0}, Lcom/tencent/mm/compatible/c/c;-><init>(Lcom/tencent/mm/compatible/c/b;)V

    iput-object v0, p0, Lcom/tencent/mm/compatible/c/b;->cdu:Lcom/tencent/mm/compatible/c/c;

    .line 18
    new-instance v0, Lcom/tencent/mm/compatible/c/c;

    invoke-direct {v0, p0}, Lcom/tencent/mm/compatible/c/c;-><init>(Lcom/tencent/mm/compatible/c/b;)V

    iput-object v0, p0, Lcom/tencent/mm/compatible/c/b;->cdw:Lcom/tencent/mm/compatible/c/c;

    .line 57
    invoke-virtual {p0}, Lcom/tencent/mm/compatible/c/b;->reset()V

    .line 58
    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 61
    iput-boolean v2, p0, Lcom/tencent/mm/compatible/c/b;->cdn:Z

    .line 62
    iput v2, p0, Lcom/tencent/mm/compatible/c/b;->cdo:I

    .line 64
    iput-boolean v2, p0, Lcom/tencent/mm/compatible/c/b;->cdp:Z

    .line 65
    iput v2, p0, Lcom/tencent/mm/compatible/c/b;->cdq:I

    .line 67
    iput-boolean v2, p0, Lcom/tencent/mm/compatible/c/b;->cdr:Z

    .line 68
    iput v2, p0, Lcom/tencent/mm/compatible/c/b;->cds:I

    .line 70
    iput-boolean v2, p0, Lcom/tencent/mm/compatible/c/b;->cdt:Z

    .line 71
    iget-object v0, p0, Lcom/tencent/mm/compatible/c/b;->cdu:Lcom/tencent/mm/compatible/c/c;

    invoke-virtual {v0}, Lcom/tencent/mm/compatible/c/c;->reset()V

    .line 73
    iput-boolean v2, p0, Lcom/tencent/mm/compatible/c/b;->cdv:Z

    .line 74
    iget-object v0, p0, Lcom/tencent/mm/compatible/c/b;->cdw:Lcom/tencent/mm/compatible/c/c;

    invoke-virtual {v0}, Lcom/tencent/mm/compatible/c/c;->reset()V

    .line 76
    iput-boolean v2, p0, Lcom/tencent/mm/compatible/c/b;->cdx:Z

    .line 77
    iput v1, p0, Lcom/tencent/mm/compatible/c/b;->cdy:I

    .line 78
    iput v1, p0, Lcom/tencent/mm/compatible/c/b;->cdz:I

    .line 79
    iput v1, p0, Lcom/tencent/mm/compatible/c/b;->cdA:I

    .line 80
    iput v1, p0, Lcom/tencent/mm/compatible/c/b;->cdB:I

    .line 82
    iput v1, p0, Lcom/tencent/mm/compatible/c/b;->cdC:I

    .line 84
    iput v1, p0, Lcom/tencent/mm/compatible/c/b;->cdD:I

    .line 85
    iput-boolean v2, p0, Lcom/tencent/mm/compatible/c/b;->cdE:Z

    .line 87
    iput v1, p0, Lcom/tencent/mm/compatible/c/b;->cdC:I

    .line 89
    iput v1, p0, Lcom/tencent/mm/compatible/c/b;->cdD:I

    .line 90
    iput-boolean v2, p0, Lcom/tencent/mm/compatible/c/b;->cdE:Z

    .line 92
    iput v1, p0, Lcom/tencent/mm/compatible/c/b;->cdF:I

    .line 94
    iput v1, p0, Lcom/tencent/mm/compatible/c/b;->cdF:I

    .line 96
    iput v1, p0, Lcom/tencent/mm/compatible/c/b;->cdG:I

    .line 97
    iput v1, p0, Lcom/tencent/mm/compatible/c/b;->cdH:I

    .line 98
    return-void
.end method
