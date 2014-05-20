.class public final Lcom/tencent/mm/ui/tools/a/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dhY:I

.field private dhZ:I

.field private hqL:Lcom/tencent/mm/ui/tools/a/l;

.field private hqM:Z

.field private hqN:Z

.field private hqO:F

.field private hqP:F

.field private hqQ:F

.field private hqR:Z

.field private resourceId:I

.field private uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->uri:Landroid/net/Uri;

    .line 121
    const v0, 0x7f02059f

    iput v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->resourceId:I

    .line 122
    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/ui/tools/a/ab;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/a/ab;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->uri:Landroid/net/Uri;

    .line 130
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/a/ab;->hqL:Lcom/tencent/mm/ui/tools/a/l;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqL:Lcom/tencent/mm/ui/tools/a/l;

    .line 131
    iget v0, p1, Lcom/tencent/mm/ui/tools/a/ab;->resourceId:I

    iput v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->resourceId:I

    .line 132
    iget v0, p1, Lcom/tencent/mm/ui/tools/a/ab;->dhY:I

    iput v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->dhY:I

    .line 133
    iget v0, p1, Lcom/tencent/mm/ui/tools/a/ab;->dhZ:I

    iput v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->dhZ:I

    .line 134
    iget-boolean v0, p1, Lcom/tencent/mm/ui/tools/a/ab;->hqM:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqM:Z

    .line 135
    iget-boolean v0, p1, Lcom/tencent/mm/ui/tools/a/ab;->hqN:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqN:Z

    .line 136
    iget v0, p1, Lcom/tencent/mm/ui/tools/a/ab;->hqO:F

    iput v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqO:F

    .line 137
    iget v0, p1, Lcom/tencent/mm/ui/tools/a/ab;->hqP:F

    iput v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqP:F

    .line 138
    iget v0, p1, Lcom/tencent/mm/ui/tools/a/ab;->hqQ:F

    iput v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqQ:F

    .line 139
    iget-boolean v0, p1, Lcom/tencent/mm/ui/tools/a/ab;->hqR:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqR:Z

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/tools/a/ab;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/a/ac;-><init>(Lcom/tencent/mm/ui/tools/a/ab;)V

    return-void
.end method

.method constructor <init>(Lcom/tencent/mm/ui/tools/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqL:Lcom/tencent/mm/ui/tools/a/l;

    .line 126
    return-void
.end method


# virtual methods
.method final aOM()Z
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->dhY:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final aOO()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->resourceId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqL:Lcom/tencent/mm/ui/tools/a/l;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aOP()Lcom/tencent/mm/ui/tools/a/ac;
    .locals 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqN:Z

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop can not be used after calling centerInside"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqM:Z

    .line 215
    return-object p0
.end method

.method public final aOQ()Lcom/tencent/mm/ui/tools/a/ab;
    .locals 13

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqN:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqM:Z

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop and center inside can not be used together."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqM:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->dhY:I

    if-nez v0, :cond_1

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop requires calling resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqN:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->dhY:I

    if-nez v0, :cond_2

    .line 276
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center inside requires calling resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_2
    new-instance v0, Lcom/tencent/mm/ui/tools/a/ab;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqL:Lcom/tencent/mm/ui/tools/a/l;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/a/ac;->uri:Landroid/net/Uri;

    iget v3, p0, Lcom/tencent/mm/ui/tools/a/ac;->resourceId:I

    iget v4, p0, Lcom/tencent/mm/ui/tools/a/ac;->dhY:I

    iget v5, p0, Lcom/tencent/mm/ui/tools/a/ac;->dhZ:I

    iget-boolean v6, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqM:Z

    iget-boolean v7, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqN:Z

    iget v8, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqO:F

    iget v9, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqP:F

    iget v10, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqQ:F

    iget-boolean v11, p0, Lcom/tencent/mm/ui/tools/a/ac;->hqR:Z

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/tencent/mm/ui/tools/a/ab;-><init>(Lcom/tencent/mm/ui/tools/a/l;Landroid/net/Uri;IIIZZFFFZB)V

    return-object v0
.end method

.method public final bo(II)Lcom/tencent/mm/ui/tools/a/ac;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 181
    if-gtz p1, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width must be positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    if-gtz p2, :cond_1

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height must be positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1
    iput p1, p0, Lcom/tencent/mm/ui/tools/a/ac;->dhY:I

    .line 188
    iput p2, p0, Lcom/tencent/mm/ui/tools/a/ac;->dhZ:I

    .line 189
    return-object p0
.end method

.method public final j(Landroid/net/Uri;)Lcom/tencent/mm/ui/tools/a/ac;
    .locals 2
    .parameter

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image URI may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/a/ac;->uri:Landroid/net/Uri;

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/tools/a/ac;->resourceId:I

    .line 162
    return-object p0
.end method
