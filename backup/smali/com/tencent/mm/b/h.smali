.class public final Lcom/tencent/mm/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bKA:Ljava/lang/String;

.field bKB:Ljava/lang/String;

.field bKC:Ljava/lang/String;

.field size:I

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/tencent/mm/b/h;->bKA:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Lcom/tencent/mm/b/h;->bKB:Ljava/lang/String;

    .line 132
    iput-object p3, p0, Lcom/tencent/mm/b/h;->bKC:Ljava/lang/String;

    .line 133
    iput p5, p0, Lcom/tencent/mm/b/h;->size:I

    .line 134
    iput-object p4, p0, Lcom/tencent/mm/b/h;->url:Ljava/lang/String;

    .line 135
    return-void
.end method


# virtual methods
.method public final getSize()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/tencent/mm/b/h;->size:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/mm/b/h;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final nv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tencent/mm/b/h;->bKB:Ljava/lang/String;

    return-object v0
.end method

.method public final nw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/mm/b/h;->bKC:Ljava/lang/String;

    return-object v0
.end method
